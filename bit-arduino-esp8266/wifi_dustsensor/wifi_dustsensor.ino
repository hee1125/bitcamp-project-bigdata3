// ESP8266WiFi 라이브러리 사용
#include <ESP8266WiFi.h>

// WiFi parameters
const char* ssid = "aaa";
const char* password = "aaa";
const char* host = "192.168.0.1";
const int port = 3000;

// The port to listen for incoming TCP connections 
#define LISTEN_PORT           80

int dust_sensor = A0;   // 미세먼지 핀 번호
int rgb_red = D8;    // rgb 핀 빨간색 핀
int rgb_yellow = D7;  // rgb핀 노란색 핀
int rgb_green = D6;  // rgb핀 녹색 핀
int rgb_blue = D5;  // rgb핀 파란색 핀

float dust_value = 0;  //센서에서 입력 받은 미세먼지 값
float dustDensityug = 0; // ug/m^3 값을 계산

int sensor_led = D0;      // 미세먼지 센서 안에 있는 적외선 led 핀 번호
int sampling = 280;    // 적외선 led를 키고, 센서 값을 읽어 들여 미세먼지를 측정하는 샘플링 시간
int waiting = 40;
float stop_time = 9680;   // 센서를 구동하지 않는 시간

void setup() {
  // Start Serial
  Serial.begin(115200); 
  delay(100);
  
  // Connect to WiFi
  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) { // 아두이노 WiFi 접속, 연결안되면 "." 출력 (연결될 때까지 반복문)
    delay(500);
    Serial.print(".");
  }
  Serial.println("");
  Serial.println("WiFi connected"); // 아두이노 WiFi 접속되면 "IP address : IP주소" 출력
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());

  pinMode(sensor_led, OUTPUT); // 미세먼지 적외선 led를 출력으로 설정
  
  pinMode(rgb_red, OUTPUT);     // 붉은색
  pinMode(rgb_yellow, OUTPUT);    // 노란색
  pinMode(rgb_green, OUTPUT);   // 녹색
  pinMode(rgb_blue, OUTPUT);    // 파란색
 
}


void loop() {
  WiFiClient client;
  delay(500);
  
  Serial.println("connecting to "+(String)host); // 연결된 host ip 주소
  Serial.println(WiFi.localIP()); // 아두이노 ip 주소
  
  digitalWrite(sensor_led, LOW);    // LED 켜기
  delayMicroseconds(sampling);   // 샘플링해주는 시간.
  
  dust_value = analogRead(dust_sensor); // 센서 값 읽어오기
  
  delayMicroseconds(waiting);  // 너무 많은 데이터 입력을 피해주기 위해 잠시 멈춰주는 시간.
  
  digitalWrite(sensor_led, HIGH); // LED 끄기
  delayMicroseconds(stop_time);   // LED 끄고 대기
    
  dustDensityug = (0.17 * (dust_value * (5.0 / 1024)) - 0.1) * 1000;
  Serial.print("Dust Density [ug/m3]: ");
  Serial.print(dustDensityug);// 시리얼 모니터에 미세먼지 값 출력
  

   if (dustDensityug <= 30.0) {     // 대기 중 미세먼지가 좋음 일 때 파란색 출력
    digitalWrite(rgb_blue, HIGH);

    digitalWrite(rgb_red, LOW);
    digitalWrite(rgb_yellow, LOW);
    digitalWrite(rgb_green, LOW);

    Serial.print("   ");
    Serial.println("blue");

  } else if (30.0 < dustDensityug && dustDensityug <= 80.0) {    // 대기 중 미세먼지가 보통 일 때 녹색 출력
    digitalWrite(rgb_green, HIGH);

    digitalWrite(rgb_blue, LOW);
    digitalWrite(rgb_red, LOW);
    digitalWrite(rgb_yellow, LOW);

    Serial.print("   ");
    Serial.println("green");

  } else if (80.0 < dustDensityug && dustDensityug <= 150.0) {   // 대기 중 미세먼지가 나쁨 일 때 노란색 출력
    digitalWrite(rgb_yellow, HIGH);

    digitalWrite(rgb_blue, LOW);
    digitalWrite(rgb_red, LOW);
    digitalWrite(rgb_green, LOW);

    Serial.print("   ");
    Serial.println("yellow");

  } else if (150.0 < dustDensityug ) { // 대기 중 미세먼지가 매우 나쁨 일 때 빨간색 출력
    digitalWrite(rgb_red, HIGH);

    digitalWrite(rgb_yellow, LOW);
    digitalWrite(rgb_green, LOW);
    digitalWrite(rgb_blue, LOW);

    Serial.print("   ");
    Serial.println("red");
  }
  delay(500);
  
    for (int i = 0; i < 5; i++) { // 5번 반복
      if (!client.connect(host, port)) { // 연결이 안되면 "connection failed! retry..." 출력.
        Serial.println("connection failed! retry...");
        delay(500);
        continue;
      } 
      else { // 연결이 되면 "raspberryPi connection success" 출력 및 데이터 값 전송
        Serial.println("raspberryPi connection success");
        String url = "/sensor/setDust?";
        client.print(String("GET ") + url + 
                 "dust=" + String(dustDensityug, 2) +                  
                 "&devid=dust" +
                 "HTTP/1.1\r\n" +
                 "Host: " + host + "\r\n" + 
                 "Connection: close\r\n\r\n");
   
        while(client.available()){
          String line = client.readStringUntil('\r');
          Serial.print(line);
        }
        break;
      }
    }
} 
