//create variables outside of setup
PShape chessbook, cover, spine, page;
float thick, tall;

void setup() {
  size (800, 800, P3D);
  thick = 50;            //Total thickness of the book will be 100.
  tall = height*0.50;    //Book's height will also be its width, since it's a square.
  
  //make constituent shapes
  //note: each "Child" posesses its own propprietary coordinates.
  rectMode(CENTER);
  strokeWeight(2);

// COVER
// A square, I'll add the chessboard pattern once I get the geometry working.
  cover = createShape(RECT, 0, 0, tall, tall);
  cover.setFill(color(150)); //placeholder color
  cover.translate(0, 0, thick); //bringing it forward by half the thickness of the book (full thickness is 100)
  
// SPINE
// Two parallel lines equal height to the cover, 100 pts away from each other, joined at both
//ends by parallel arcs, an equal distance left from the center as the edge of the cover.
    spine = createShape();
      spine.beginShape();
        spine.vertex(-thick, tall*-0.5);
        spine.vertex(thick, tall*-0.5);
        spine.vertex(thick, tall*0.5);
        spine.vertex(-thick, tall*0.5);
      spine.endShape();
      spine.rotateY(TAU*0.25);
      spine.translate(tall*-0.5, 0, 0);
    
// Two parallel lines of equal height to the cover, 100 pts away from each other, joined at both
//ends by parallel arcs, an equal distance right from the center as the edge of the cover.
  page = createShape(); //Again this will be a curved plane rather than a single edge.
      page.beginShape();
        page.vertex(-thick, tall*-0.5);
        page.vertex(thick, tall*-0.5);
        page.vertex(thick, tall*0.5);
        page.vertex(-thick, tall*0.5);
      page.endShape();    
    page.rotateY(TAU*0.25);
    page.rotateZ(TAU*0.25);
    page.translate(0, tall*0.5, 0);
  
  //create shape group
  chessbook = createShape(GROUP);
  //add the parts together
    chessbook.addChild(cover);
    chessbook.addChild(spine);
    chessbook.addChild(page);


}

void draw() {
  background(#e291f3);
  
  translate(width*0.50, height*0.50, 0);  
  rotateX(TAU*0.150);
  rotateY(TAU*0.000);
  rotateZ(TAU*-0.125);
// If I'm right I won't need to rotate in draw() because the objects will exist in a rotated 
// state before they're drawn, by posessing the properties of having been rotated at creation,
// in setup(). These rotation controls are only here in draw() for me to easily preview 
// rotations so I can get the numbers.

  shape(chessbook);

}
