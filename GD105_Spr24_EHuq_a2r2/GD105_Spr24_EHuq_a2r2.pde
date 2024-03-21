/*  Not gonna lie, I have no plan for this one. I'm just gonna throw some paint at the
canvas and see where it takes me.
*/

void setup(){
  size(500, 500);  //let's try a little one.
  background(#1FA7FF);

}

void draw(){
  stroke(#FFF14D);
  
  
}
 
void spiro(float x, float y, float rotation, float orbit, PShape shape){
  
  shape(shape, x, y);
  translate(width * orbit, height * orbit);
  rotate(TAU * rotation); 
}
