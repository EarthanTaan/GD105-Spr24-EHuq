void setup(){
  size(400, 400);
  windowTitle("The Clock Piece mk.III");
}

void draw(){
  background(0);
  
  strokeWeight(height / hour());
  colorMode(HSB, 1, 100, 100);
  for (int i = 0; i < hour(); i++) {
    stroke(/*hue*/ random(hour()), /*saturation*/ 100, /*brightness*/ lerp(0, 50, abs(sin(map(millis() * 0.125, 0, 1000, 0, TAU)))));
    line(0, height / hour() * i + (height / hour()) * 0.5, width, height / hour() * i + (height / hour()) * 0.5); 
  }
  
  colorMode(HSB, 360, 100, 100);
  translate(width/2, height/2);
  rotate(frameCount * -0.01);
  stroke(lerpColor(155, 255, sin(map(millis(), 0, 1000, 0, TAU))));
  strokeWeight(1);
  for (int i = 0; i < minute(); i++) {
    float minRad = width * 0.45;
    line(0, 0, minRad * cos(map(i, 0, 60, TAU * -0.25, TAU * 0.75)), minRad * sin(map(i, 0, 60, TAU * -0.25, TAU * 0.75)));
  }
  
  if (frameCount == 1) {save("GD105 Clock Piece output.png");}
}
