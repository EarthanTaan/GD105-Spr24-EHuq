/* For the Clock, to illustrate that time is fleeting, how about a descending count of
 seconds remaining in the year? I don't think the computer clock holds this data, so I'll
 need to cobble it together from what the clock does say. I assume this will require me to
 construct a sort of code abacus that tacks a set number of seconds onto the total based one
 the month and date.*/ 
 
//But that sounded really boring so I made a rocketship instead.

PVector rocPos /*Rocket Position*/ = new PVector();
PVector stillPos /*non-shaking centerpoint*/ = new PVector();

void setup() {
  windowTitle("The Clock Piece");
  size(400, 400);  //another small one, I think. I'll go bigger for the moire.
  
  stillPos.set(width / 2, height / 2);
  
/*end of setup()*/}

void draw() {
  background(0);
  rocPos.set(width/2 + noise(frameCount/2)*5, height/2 + noise(frameCount/2)*5);

//jet-trail
  colorMode(HSB, 1, 100, 100, 100);
  stroke(noise(frameCount), 20, map(noise(frameCount * 0.15), 0, 1, 50, 100));

  float trailWidth = map(noise(frameCount), 0, 1, 10, 25);
  strokeWeight(trailWidth/*fluctuate mildly*/);
  
  line(rocPos.x + 0.50, rocPos.y + 1.50, 
  stillPos.x + width * cos(radians(135)), stillPos.y + width * sin(radians(135))
  );

//Draw the rocket.
  fill(#D61818);
  stroke(#D61818);
  strokeWeight(2);
  triangle(
    rocPos.x - 75, rocPos.y + 50,
    rocPos.x - 10, rocPos.y - 0,
    rocPos.x - 50, rocPos.y + 10);
  triangle(
    rocPos.x - 40, rocPos.y + 75,
    rocPos.x - 5, rocPos.y - -50,
    rocPos.x - 0, rocPos.y + 10);
  curve(rocPos.x + 250, rocPos.y + 50,
    rocPos.x + 50, rocPos.y - 50,
    rocPos.x - 50, rocPos.y + 50,
    rocPos.x + 50, rocPos.y + 250);
  curve(rocPos.x - 50, rocPos.y - 250,
    rocPos.x + 50, rocPos.y - 50,
    rocPos.x - 50, rocPos.y + 50,
    rocPos.x - 250, rocPos.y - 50);
  line(rocPos.x - 49, rocPos.y + 49, rocPos.x + 49, rocPos.y - 49);
  
//A pulse for the seconds marker.
  float m = map(millis(), 0, 1000, 0, TAU);
  fill(lerpColor(#000000, #EFF02C, sin(m)));
  circle(rocPos.x + 10, rocPos.y - 10, 25);

  
/*end of draw()*/}
