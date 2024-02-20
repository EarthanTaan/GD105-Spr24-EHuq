//create PShape variables outside of setup()
PShape chessbook, cover, spine, page;
//PVector FTL, FTR, FBR, FBL, BTL, BBR, BBL //Book corners: FTL = F.ront T.op L.eft

void setup() {
  size (800, 800, P3D);

  //create shape group
  chessbook = createShape(GROUP);

  //make constituent shapes
  //each "Child" posesses its own propprietary coordinates.
  rectMode(CENTER);
  strokeWeight(2);

  cover = createShape(RECT, 0, 0, width/2, height/2);
  cover.setFill(color(150));
  cover.translate(0, 0, 50);

  //bCover = createShape(RECT, 0, 0, width/2, height/2);
  //bCover.setFill(color(75));
  //bCover.translate(0, 0, -50);
  // The back cover won't be visible in the final image, so this is superfluous.
  
// Two parallel lines equal height to the cover, 100 pts away from each other, joined at both
//ends by parallel arcs, an equal distance left from the center as the edge of the cover.
  spine = beginShape();
    vertex();
    
// Two parallel lines of equal height to the cover, 100 pts away from each other, joined at both
//ends by parallel arcs, an equal distance right from the center as the edge of the cover.
  page = createShape(); //Again this will be a curved plane rather than a single edge.

  //add the parts together
  chessbook.addChild(cover);
  chessbook.addChild(spine);
  chessbook.addChild(page);
}

void draw() {
  background(#e291f3);
  translate(width*0.500, height*0.500);
  rotateX(1.00);
  rotateY(0.00);
  rotateZ(0.80);
  shape(chessbook);

}
