//create PShape variables outside of setup()
PShape chessbook, fCover, bCover, topSpine, botSpine, topPage, botPage;

void setup() {
  size (800, 800, P3D);

  //create shape group
  chessbook = createShape(GROUP);

  //make constituent shapes
  rectMode(CENTER);
  fCover = createShape(RECT, 0, 0, width/2, height/2);
  fCover.setFill(color(150));
  fCover.translate(0, 0, 50);

  bCover = createShape(RECT, 0, 0, width/2, height/2);
  bCover.setFill(color(75));
  bCover.translate(0, 0, -50);
  //topSpine = createShape();
  //botSpine = createShape();
  //topPage = createShape();
  //botPage = createShape();

  //add the parts together
  chessbook.addChild(fCover);
  chessbook.addChild(bCover);
}

void draw() {
  background(#e291f3);
  translate(width*0.500, height*0.500);
  rotateX(1.00);
  rotateY(0.00);
  rotateZ(0.80);
  shape(chessbook);
  //why isn't this working?
  //Figured it out: each "Child" posesses its own propprietary coordinates.
}
