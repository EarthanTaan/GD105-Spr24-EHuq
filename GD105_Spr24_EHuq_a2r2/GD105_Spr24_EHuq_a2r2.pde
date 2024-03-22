/*  Not gonna lie, I have no plan for this one. I'm just gonna throw some paint at the
canvas and see where it takes me.
*/
PShape tri, sqr, star;
PVector anchor;
float x, y, rotation, orbit;

void setup(){
  size(500, 500);  //let's try a little one.
  background(#1FA7FF);
  
  anchor = new PVector(x, y);
  tri = createShape(TRIANGLE, anchor.x + sin(1.0), anchor.y + sin(0.5));
  
}

void draw(){
  stroke(#FFF14D);
  
  spiro(23, 23, 16, 0.12, sqr);
  
  
}

/*How about a function that does like a spirograph thing. Draw a square, then draw a slightly
rotated square centered on a point along an invisible circle, and just keep doing that
until the circle is complete. */
void spiro(float x, float y, float rotation, float orbit, PShape shape){
  for(int i = 0; i < 360; i += 1){
    shape(shape, x, y);
    translate(width * orbit, height * orbit);
    rotate(TAU * rotation);
    
  }
}
