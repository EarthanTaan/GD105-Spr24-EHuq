/* Having utterly failed to understand how to make a custom class and implement it, I have 
completely abandoned all of my initial concepts for this piece in favor of something that
at least looks cool. 
It uses an excerpt from "Small Blue Thing" by Suzanne Vega, from her first, self-titled album,
published by A&M in 1985.*/

//This is a song I have been singing to soothe my baby since before he was born.
//It's a little spooky, like all good nursery rhymes.
String poem = new String("Today I am a small blue thing Like a marble or an eye With my knees against my mouth I am perfectly round I am watching you");
String[] wordBank;
PVector wordPlace;
PFont hand = new PFont();

void setup() {
  size(500, 500, P3D);
  windowMove(int(displayWidth * 0.25), int(displayHeight * 0.25)); //It keeps getting stuck in the corner.
  
  //This is a custom font created from my spouse's handwriting.
  hand = createFont("Comic_font_3_bold.otf", 40);
  textFont(hand);
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
  //for some reason, trying to draw the smaller sphere after the large one caused it to be invisible.
  sphere(width * 0.125);
  
  fill(#92A5CE);
  textSize(40);
  textAlign(CENTER, CENTER);

  for (String w : wordBank) {
    text(w, wordPlace.x, wordPlace.y, wordPlace.z);
    rotateX(0.17);
    rotateY(0.14);
    rotateZ(0.40);
  }
  
/* end of draw() */ }
