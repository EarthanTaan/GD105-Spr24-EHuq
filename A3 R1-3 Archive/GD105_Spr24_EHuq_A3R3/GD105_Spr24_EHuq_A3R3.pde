void setup() {
  size(500, 500, P3D);
}

void draw() {
  background(#061567);  //midnight
  translate(width/2, height/2);
  strokeWeight(1.5);
  colorMode(HSB, 360, 100, 100);
  stroke(120, 100, 90 + 10 * sin(TAU * frameCount * 0.005));  //retro greenscreen glow
  noFill();

  float boxSize = width;

  
  for (int i = 0; i < 50; i ++) {
    rotateY(frameCount * 0.0001);
    rotateX(frameCount * 0.0002);
    box(boxSize);
    boxSize -= 3;
  }
  
  for (int i = 0; i < 50; i ++) {
    rotateY(frameCount * -0.0002);
    rotateX(frameCount * -0.0001);
    box(boxSize);
    boxSize -= 5;
  }
  
  println(frameCount);
  if (frameCount == 530) {save("GD105 A3R3 Output.png");}
}
