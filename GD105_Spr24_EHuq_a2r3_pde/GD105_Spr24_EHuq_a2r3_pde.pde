/* I'm going try to make a heart-shape which beats faster the closer the mouse gets to it,
 and if I can pull that off, I want to make it shatter/stop if clicked on. Wish me luck.*/

float hFat, hBal;  //girth and "balance" of heart
PVector hPoint = new PVector();  //pointy bit of the heart
PShape heart;  //pointy bit of the heart

void setup() {
  windowTitle("The Mouse Reactive Piece");
  size(900, 900);  // I was originally going to do a small one, but I'll need ample space around the heart to communicate the effect. (But my screen's not very big)
  

} //end of setup() block

void draw() {
  background(0);
  translate(width/2, height/2);
  shapeMode(CENTER);
  noStroke();
  fill(#D30F0F);
  hFat = 200;
  hBal = TAU/3; 
  hPoint.set(cos(TAU*0.25), sin(TAU*0.25));
  triangle(hFat * hPoint.x, hFat * hPoint.y, hFat * cos(hBal), hFat * sin(hBal), hFat * cos(-hBal), hFat * sin(-hBal));
}
