String poem = new String("Today I am a small blue thing Like a marble or an eye With my knees against my mouth I am perfectly round I am watching you I am cold against your skin You are perfectly reflected I am lost inside your pocket I am lost against your fingers I am falling down the stairs I am skipping on the sidewalk I am thrown against the sky I am raining down in pieces I am scattering like light Scattering like light Scattering like light Today I am a small blue thing Made of China, made of glass I am cool and smooth and curious, I never blink I am turning in your hand Turning in your hand Turning in your hand Small blue thing Turning in your hand");
String[] wordBank;
PVector wordPlace;
Plate[] plates = new Plate[0];

void setup() {
  size(500, 500, P3D);
  windowMove(int(displayWidth * 0.25), int(displayHeight * 0.25)); //It keeps getting stuck in the corner.

  wordBank = split(poem, ' ');
  wordPlace = new PVector(width * 0.3, -5, 0);
  textAlign(CENTER, CENTER);
  textSize(40);
  
/* end of setup() */ }

void draw() {
  background(0);
  translate(width/2, height/2);

  noStroke();
  colorMode(HSB, 360, 100, 100, 100);
  float theta = frameCount;
  lights();
  spotLight(240, 0, 100, theta * cos(TAU * 0.2), theta * sin(TAU * 0.1), theta * asin(TAU * 0.1), theta * -cos(TAU * 0.1), theta * -sin(TAU * 0.1), theta * -asin(TAU * 0.1), 30, 10);
  fill(220, 0, 100, 100);
  sphere(width * 0.0625);
  fill(220, 76, 83, 80);
  sphere(width * 0.125);
  
  fill(255);
  textSize(40);
  textAlign(CENTER, CENTER);
  for (String w : wordBank) {
    append(plates, new Plate(w, 0.0, 0.0, 0.0));
  }
  for (Plate p : plates) {
    p.show();
  }
  
  
/* end of draw() */ }

//an object to glue a word onto so that a word can be an object
class Plate {
  //fields (data) (what it has)
  String word = new String();
  PVector spot = new PVector();
  
  //constructors (initialize) (what it is)
  Plate(String tempword, float tempX, float tempY, float tempZ) {
  word = tempword;
  spot.set(tempX, tempY, tempZ);
  }
  
  //methods (functions) (what it does)
  //show() make the plate appear with its word on it at the location
  void show() {
    text(word, spot.x, spot.y, spot.z);
  }
/*end of Plate class*/ }
