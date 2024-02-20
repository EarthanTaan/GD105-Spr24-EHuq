//create PShape variables outside of setup()
PShape chessbook, fCover, bCover, topSpine, botSpine, topPage, botPage;

void setup(){
  size (800, 800, P3D);
  
  //create shape group
  chessbook = createShape(GROUP);
  
  //make constituent shapes
  translate(width/2, height/2);
  rectMode(CENTER);
  fCover = createShape(SQUARE, 0, 0, 100);
  fCover.setFill(color(150));
  translate(0, 0, -30);
  bCover = createShape(SQUARE, 0, 0, 100);
  bCover.setFill(color(75));
  //topSpine = createShape();
  //botSpine = createShape();
  //topPage = createShape();
  //botPage = createShape();

  //add the parts together
  chessbook.addChild(fCover);
  chessbook.addChild(bCover);
  
}

void draw(){
  background(#BE3FD8);
  shape(chessbook);
  //why isn't this working?
}
