const express = require('express');
const router = express.Router();

const awsIot = require('aws-iot-device-sdk');

const devices = {};

const dev01 = awsIot.device({

    // AWSIoT keyPath 설정
    keyPath: "../dev01.private.key",
    certPath: "../dev01.cert.pem",
    caPath: "../root-CA.crt",

    clientId: "sensor",

    // AWS에 등록한 Thing을 가리키는 URL.
    // AWS IoT 사물 관리 페이지에서 "상호작용" 메뉴에서
    // HTTPS의 RestAPI를 요청할 때 사용할 Thing의 URL이다.
    host: "a7ag7dfca9ze7x.iot.ap-northeast-2.amazonaws.com" // AWSIoT 엔드포인트 기재
    // host: process.env.DEV01_HOST
 });


 // 이 프로그램이 AWS IoT에 등록한 Thing과 연결되었을 때 호출될 메서드 추가
dev01.on('connect', function() {
    // 이 함수를 호출되었다는 것은 AWS IoT의 Thing과 연결되었다는 의미다.
    console.log('AWS IoT의 dev01 장비와 연결 되었음!');
    // 연결에 성공하면 연결된 장비를 목록에 추가한다.
    devices['dev01'] = dev01;
});

// 아두이노에서 보낸 온도/습도 센서값 get
router.get('/setTempHumi', (req, res) => {
    console.log('/sensor/set 요청:')
    console.log(req.query.devid)
    console.log(req.query.temp, "°C")
    console.log(req.query.humi, "%")
    res.send('ok')
        // AWSIoT 에 publish (장비명 'dev01', 사서함 'topic_1', 보낼값 형식{" ": " ",...})
        publish('dev01', 'topic_1', {
            "sensor": "dht",
            "temp": req.query.temp,
            "humi": req.query.humi
         });
});

// 아두이노에서 보낸 미세먼지 센서값 get
router.get('/setDust', (req, res) => {
    console.log('/sensor/set 요청:')
    console.log(req.query.devid)
    console.log(req.query.dust, "[ug/m3]")
    res.send('ok')
        //// AWSIoT 에 publish (장비명 'dev01', 사서함 'topic_1', 보낼값 형식{" ": " ",...})
        publish('dev01', 'topic_1', {
            "sensor": "dust",
            "dust": req.query.dust
         });
});


// ** subscribe 으로 AWSIoT topic_1 에 전송된 publish 값 확인!
dev01.on('connect', function() {
    // 이 함수를 호출되었다는 것은 AWS IoT의 Thing과 연결되었다는 의미다.
    console.log('connect');

    // 연결되면 'topic_1'이라는 사서함을 구독하겠다고 선언한다.
    // => 즉 지금부터 연결된 Thing의 'topic_1'이라는 사서함에
    //    메시지가 오면 받겠다는 의미다.
    dev01.subscribe('topic_1');
    console.log('topic_1의 사서함 구독 시작')
});

// 구독하기로 설정한 사서함에 메시지가 도착할 때 마다
// AWS IoT 서버에 이 프로그램에 알려준다.
// 그때 호출될 메서드를 추가한다.
dev01.on('message', function(topic, payload) {
    console.log('사서함 메시지 도착');
    console.log('사서함 이름:', topic);
    console.log('받은 메시지:', payload.toString());
    console.log('-------------------------');
});

// publish 함수 정의  (장비명 'dev01', 사서함 'topic_1', 보낼값 JSON형식{" ": " ",...})
function publish(deviceName, topic, dataObj) {
    devices[deviceName].publish(topic, JSON.stringify(dataObj));
};

module.exports = router;
