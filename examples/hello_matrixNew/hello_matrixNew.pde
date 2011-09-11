#include <Sprite.h>
#include <MatrixNew.h>

// Hello Matrix
// by Nicholas Zambetti <http://www.zambetti.com>
// Modification by David Egolf for testing purposes

// Demonstrates the use of the Matrix library
// For MAX7219 LED Matrix Controllers
// Blinks welcoming face on screen

// Created 13 February 2006
// DE Mod: 11 September 2011

/* create a new Matrix instance
   MatrixNew(data, clock, load);
*/
MatrixNew myMatrix = MatrixNew(0, 2, 1);

void setup()
{
  Serial.begin(9600);
}

void loop()
{
  myMatrix.clear(); // clear display
  Serial.println(myMatrix.bufferAsString());
  delay(1000);

  // turn some pixels on
  myMatrix.write(1, 5, HIGH);
  myMatrix.write(2, 2, HIGH);
  myMatrix.write(2, 6, HIGH);
  myMatrix.write(3, 6, HIGH);
  myMatrix.write(4, 6, HIGH);
  myMatrix.write(5, 2, HIGH);
  myMatrix.write(5, 6, HIGH);
  myMatrix.write(6, 5, HIGH);
  Serial.println(myMatrix.bufferAsString());
  Serial.println(myMatrix.getBuffer(7), BIN);
  delay(10000000);
}
