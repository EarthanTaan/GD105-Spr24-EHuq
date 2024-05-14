/* After two over-complicated ideas, I decided to approach this more like an art project
than an engineering problem, and programmed this more or less stream-of-consciousness.
I had no plan, and I think that shows, but I also think this is more interesting than
my first two ideas, which had I been able to execute them, I would not have been as 
proud of as I am of this. */

void setup(){
  size(400, 400);
  windowTitle("The Clock Piece mk.III");
}

void draw(){
  background(0);
  
  strokeWeight(height / 12);
  colorMode(HSB, 1, 100, 100);
  for (int i = 0; i < hour(); i++) {
    stroke(/*hue*/ random(hour()), /*saturation*/ 100, /*brightness*/ lerp(0, 50, abs(sin(map(millis() * 0.125, 0, 1000, 0, TAU)))));
    line(0, height / hour() * i + (height / hour()) * 0.5, width, height / hour() * i + (height / hour()) * 0.5); 
  }
  
  colorMode(HSB, 360, 100, 100);
  translate(width/2, height/2);
  rotate(frameCount * -0.001);
  stroke(lerpColor(100, 255, sin(map(millis(), 0, 1000, 0, TAU))));
  strokeWeight(1.5);
  for (int i = 0; i < minute(); i++) {
    float minRad = width * 0.45;
    line(0, 0, minRad * cos(TAU / map(i, 0, 60, TAU * -0.25, TAU * 0.75) * i), minRad * sin(TAU / map(i, 0, 60, TAU * -0.25, TAU * 0.75) * i));
  }
  
  //println("The current hour is:"+hour());
  
  if (frameCount == 1) {save("GD105 Clock Piece output.png");}
}
