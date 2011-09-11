#include <Sprite.h>
#include <MatrixNew.h>

MatrixNew myMatrix = MatrixNew(2,3,4);

void setup()
{
  myMatrix.clear();
  Serial.begin(9600);
  delay(2500);
  pinMode(13, OUTPUT);
  digitalWrite(13, HIGH);
  delay(500);
  digitalWrite(13, LOW);
  myMatrix.clear(); // clear display
  Serial.println(myMatrix.bufferAsString());
  delay(1000);
}

void loop()
{
  for(int i = 0; i < 8; i++)
  {
    myMatrix.write(i, i, HIGH);
    Serial.println(i);
    Serial.println(myMatrix.bufferAsString());
    delay(1000);
  }
  delay(1000000);
}





