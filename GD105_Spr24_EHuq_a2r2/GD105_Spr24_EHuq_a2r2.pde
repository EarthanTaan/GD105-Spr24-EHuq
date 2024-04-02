/*  Tried to make what I thought would be a simple spirograph-like effect. Took me entirely too
long to understand sin/cos (and I still don't think I do), and then almost nothing I tried to
do worked the way I expected - but hey that's art sometimes, right?
In the end, what I have here is a program that will generate a different work each time it's run,
and some of them are more appealing than others. The example Output.png saved in the folder is
just one I thought had a good balance of space and hue.
*/

PVector triStart = new PVector();  //start point of triangle-series
PVector sizenpoint = new PVector();  //triangle size and orientation
PVector triEnd = new PVector();  //endpoint of triangle-series
color from, to;   //trying to lerp some colors
int seed = int(random(999999999));

void setup(){
  randomSeed(seed);
  windowTitle("The Layered Drawing Piece");
  size(900, 900);
  background(50);    //This BG allows some cooler colors to pop as much as warmer ones.
  noLoop();    //Had to cut off the damned thing.
  strokeWeight(1);
  noFill();  //Triangles should overlap loudly and create a bit of clutter.
}

void draw(){
  translate(width/2, height/2);

//I hand-adjusted most of these values repeatedly to achieve an appealing result. None of my
//predictions were correct, so it was just trial and error.
  for(int i = 0; i<10; i++){
    from = color(random(255), random(255), random(255));
    to = color(random(255), random(255), random(255));
    stroke(lerpColor(from, to, i));
    spiroTri(random(-0.50,0.50), random(-0.50,0.50), random(0.25), random(1.00));
  }

}

/* A function to draw an equilateral triamgle around a central point.
Expects floats X and Y values for the middle point, a radius, and a "yoke" or control point. 
The yoke is the "top" of the triangle, from which the other two points are derived. The numbers
given for midX, midY, and the radius are automatically multiplied by width or height. The yoke is
multiplied by TAU. The floats supplied should therefore be between -0.5 and 0.5 for X, Y, and 
radius so as not to go too far off-canvas, and the yoke should be between 0 and 1, since it 
measures a rotation. 
*/
void spiroTri(float midX, float midY, float rad, float yoke){
  float eqDist = TAU / 3;
    rad *= width;  //radius
    yoke *= TAU;  //tripoint prime, from which the other two will be derived
    midX *= width;  //X of middle of triangle 
    midY *= height;  //Y of middle of triangle
  for(int i = 1; i<50; i++){    //draw many such triangles in an arc from the starting point
    triangle(
      midX + rad * cos(yoke), midY + rad * sin(yoke),  //Tripoint Prime
      midX + rad * cos(yoke + eqDist), midY + rad * sin(yoke + eqDist),  //pt 2
      midX + rad * cos(yoke - eqDist), midY + rad * sin(yoke - eqDist)  //pt 3
    );
    midX += width*0.015 * cos(yoke*0.25);
    midY += height*0.015 * sin(yoke*0.25);
    yoke += 0.75;
  }
}
/*I'll be honest, I'm not sure which of these lines is causing the triangles to draw in a circle.
It's what I was trying to make happen, but nothing I planned worked. Eventually I was just 
making small alterations, stabbing in the dark, moving lines around, and then it worked.
Needing to move on from the assignment, I called it a W and called it a day.
If I were to do this again, I would probably make use of constrain() as well as try to achieve
a more linear shift in colors.*/
void mouseClicked(){save("GD105 Spr24 EHuq a2r2 output seed"+seed+".png");}
