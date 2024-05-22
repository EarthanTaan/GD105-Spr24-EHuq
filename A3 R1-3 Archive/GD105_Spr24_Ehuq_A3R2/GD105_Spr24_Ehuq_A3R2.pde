/* Revision: I'm mostly satisfied with this as an art piece, but I want to see if I can make the 
division of the background by the hours a little more obvious. Nor obvious as a timepiece
necessarily, but just more obviously divided rather than merely a flat plane. I should maybe do
this with rectangles instead of lines.
Update: Rectangles was the answer, also I forgot to modulo the hour by 12. This piece is now in
line with my intentions for it - the hours indicator behaves as I wanted it to.

After two over-complicated ideas, I decided to approach this more like an art project
than an engineering problem, and programmed this more or less stream-of-consciousness.
I had no plan, and I think that shows, but I also think this is more interesting than
my first two ideas, which had I been able to execute them, I would not have been as 
proud of as I am of this. */

float hourHandHeight;

void setup(){
  size(400, 400);
  windowTitle("The Clock Piece mk.III");
}

void draw(){
  background(0);
  //hourHandHeight = height / 12 * hour();
  
  //Divide the background evenly into a number of sections equal to the present hour, and give them
  //a glitchy weird color effect.
  colorMode(HSB, 1, 100, 100);
  noStroke();
  fill(/*hue*/ random(hour()), /*saturation*/ 100, /*brightness*/ lerp(0, 50, abs(sin(map(millis() * 0.125, 0, 1000, 0, TAU)))));
  for (int i = 0; i < hour()%12; i++) {
    rect(0, height / (hour() % 12) * i + 1.5, width, height / (hour() % 12) - 3);
  }
  
  //A spidery collection of radial lines determined by the current minutes of the present hour. 
  colorMode(HSB, 360, 100, 100);
  translate(width/2, height/2);
  rotate(frameCount * -0.001);
  stroke(lerpColor(100, 255, sin(map(millis(), 0, 1000, 0, TAU))));
  strokeWeight(1.5);
  for (int i = 0; i < minute(); i++) {
    float minRad = width * 0.45;
    line(0, 0, minRad * cos(TAU / map(i, 0, 60, TAU * -0.25, TAU * 0.75) * i), minRad * sin(TAU / map(i, 0, 60, TAU * -0.25, TAU * 0.75) * i));
  }
  
  if (frameCount == 1) {save("GD105 Clock Piece output.png");}
}
