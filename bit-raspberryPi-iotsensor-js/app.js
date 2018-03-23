const http = require('http') // 로컬 테스트용
//const https = require('https') // 운영 서버용
const express = require('express')
const fs = require('fs')
const bodyParser = require('body-parser');
const request = require('request')

// .env 파일의 내용을 로딩한다.
// require('dotenv').config({path: '/home/ec2-user/vars/.env'})

const app = express();

// View engine
app.set('view engine', 'pug');

// 클라이언트에서 정적 웹자원을 요청했을 때 그 자원을 찾을 폴더를 지정한다.
// 정적 웹자원:
// => 실행하지 않고 그대로 읽어서 클라이언트에게 보내는 파일
// => .html, .gif, .jpg, .css, .js 등
app.use(express.static(__dirname + '/public'));

// JSON 형식으로 클라이언트가 보낸 데이터를 처리하는 객체 등록
// => 이 객체를 등록하지 않으면 JSON 형식으로 전달 받은 데이터를 다룰 수 없다.
app.use(bodyParser.json());

// URL 인코딩 형식으로 클라이언트가 보낸 데이터를 처리하는 객체 등록
// => 이 객체를 등록하지 않으면 URL 인코딩 형식으로 전달 받은 데이터를 다룰 수 없다.
app.use(bodyParser.urlencoded({extended: true}));


app.use('/sensor', require('./routes/sensor'));

/*
app.get('/', function(req, res) {
    res.render('interface');
});
*/
// 로컬 테스트용
http.createServer(app).listen(3000, function() {
  console.log('서버가 시작되었습니다!');

})
