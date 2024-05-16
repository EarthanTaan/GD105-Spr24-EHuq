WordTile words;

void setup() {
  size(500, 500, P3D);
  words = new WordTile();
/* end of setup() */ }

void draw() {
  background(0);
  translate(width/2, height/2);
  
  fill(#3065D6);
  noStroke();
  colorMode(HSB, 360, 100, 100);
  float theta = frameCount;
  lights();
  spotLight(240, 0, 100, theta * cos(TAU * 0.2), theta * sin(TAU * 0.1), theta * asin(TAU * 0.1), theta * -cos(TAU * 0.1), theta * -sin(TAU * 0.1), theta * -asin(TAU * 0.1), 30, 10);
  sphere(width * 0.125);
  
  words.go();
  
  
/* end of draw() */ }
