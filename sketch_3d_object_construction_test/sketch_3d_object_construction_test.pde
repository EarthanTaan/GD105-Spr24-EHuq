//create variables outside of setup
PShape chessbook, cover, spine, page;
float thick, tall;

void setup() {
  size (800, 800, P3D);
  thick = 50;
  tall = height*0.50;
  
  //make constituent shapes
  //each "Child" posesses its own propprietary coordinates.
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
  //page = createShape(); //Again this will be a curved plane rather than a single edge.
  //  page.
  
  //create shape group
  chessbook = createShape(GROUP);
  //add the parts together
  chessbook.addChild(cover);
  chessbook.addChild(spine);
  chessbook.addChild(page);
  chessbook.setFill(color(#933F0F));
}

void draw() {
  background(#e291f3);
  
  translate(width*0.500, height*0.500);  
  rotateX(0.00);
  rotateY(0.00);
  rotateZ(0.00);
  
  shape(chessbook);

}
