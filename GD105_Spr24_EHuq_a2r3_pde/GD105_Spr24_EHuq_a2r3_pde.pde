/* I'm going try to make a heart-shape which beats faster the closer the mouse gets to it,
and if I can pull that off, I want to make it shatter/stop if clicked on. Wish me luck.*/
PShape heart;
float hWide, hTall;  //width and height of heart
PVector hPoint = new PVector(width*cos(TAU*0.25), 100*sin(TAU*0.25));  //pointy bit of the heart

void setup(){
  windowTitle("The Mouse Reactive Piece");
  size(900, 900);  // I was originally going to do a small one, but I'll need ample space around the heart to communicate the effect. (But my screen's not very big)
  shapeMode(CENTER);
  noStroke();
  fill(#D30F0F);
  
  heart = createShape(TRIANGLE, hPoint.x, hPoint.y, hWide, hTall, -hWide, hTall);
}

void draw(){
  background(0);
  translate(width/2, height/2);
  hWide = 25;
  hTall = 50;
  shape(heart, 0, 0);    //why isn't this working? Have to revisit the reference guide.
  
  
  
  
}
