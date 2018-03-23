// ESP8266WiFi 라이브러리 사용
#include <ESP8266WiFi.h>
// DHT11 센서(온습도) 라이브러리 사용
#include <DHT11.h>

// WiFi parameters
const char* ssid = "aaa";
const char* password = "aaa";
const char* host = "192.168.0.0";
const int port = 3000;


int pin = D1;  // 핀설정
DHT11 dht11(pin);

// Variables to be exposed to the API
float temperature;
float humidity;

void setup() {
  // Start Serial
  Serial.begin(115200); // 115200 보드레이트 사용
  delay(10);

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

}


void loop() {
  WiFiClient client;
  delay(500);

  Serial.print("connecting to "); 
  Serial.println(host);  // 연결된 host ip 주소
  Serial.println(WiFi.localIP()); // 아두이노 ip 주소

  int d;
  if ((d = dht11.read(humidity, temperature)) == 0) { // 온도, 습도 값을 읽어오면
    Serial.println("Humidity:" + (String)humidity);   // 습도값 출력     
    Serial.println("Temperature:" + (String)temperature);  // 온도값 출력 
    Serial.println(WiFi.localIP());

    for (int i = 0; i < 5; i++) {  // 5번 반복
      if (!client.connect(host, port)) { // 연결이 안되면 "connection failed! retry..." 출력.
        Serial.println("connection failed! retry...");
        delay(500);
        continue;
      }
      else { // 연결이 되면 "raspberryPi connection success" 출력 및 데이터 값 전송
        Serial.println("raspberryPi connection success");
        String url = "/sensor/setTempHumi?"; 
        client.print(String("GET ") + url +
                     "humi=" + String(humidity, 2) +
                     "&temp=" + String(temperature, 2) +
                     "&devid=dht" +
                     "HTTP/1.1\r\n" +
                     "Host: " + host + "\r\n" +
                     "Connection: close\r\n\r\n");

        while (client.available()) {
          String line = client.readStringUntil('\r');
          Serial.print(line);
        }
        break;
      }
    }
  }
  else {
    Serial.print("Error:");
    Serial.print(d);
  }
}
