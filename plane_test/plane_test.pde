PVector TL, TR, BL, BR;
PShape book, cover, spine, page;
float wideoffset = 0.050;
float talloffset = 0.250;

void setup(){
  size(800, 800, P3D);
  shapeMode(CENTER);
  //rotateX(TAU*0.666);
  //rotateY(TAU*0.00);
  //rotateZ(TAU*0.125);
    
  TL = new PVector(width * -wideoffset, height * -talloffset);
  TR = new PVector(width*wideoffset, height* -talloffset);
  BL = new PVector(width* -wideoffset, height*talloffset);
  BR = new PVector(width*wideoffset, height*talloffset);  

  spine = createShape();
    spine.beginShape();
      spine.vertex(TL.x, TL.y);
      spine.vertex(TR.x, TR.y);
      spine.vertex(BR.x, BR.y);
      spine.vertex(BL.x, BR.y);
    spine.endShape();
    spine.rotateY(TAU*0.25);
    spine.setFill(#8171B2);
    spine.translate(width*-0.25, 0, 0);
    
  page = createShape();
    page.beginShape();
      page.vertex(TL.x, TL.y);
      page.vertex(TR.x, TR.y);
      page.vertex(BR.x, BR.y);
      page.vertex(BL.x, BR.y);
    page.endShape();
    page.rotateY(TAU*0.25);
    page.rotateZ(TAU*0.25);
    page.translate(0, height*0.25, 0);  

  book = createShape(GROUP);
    book.addChild(spine);
    book.addChild(page);
    //book.rotateX(TAU*0.666);
    //book.rotateZ(TAU*0.125);
    book.translate(width*1.00, height*1.00, 0);
  
}

void draw(){
  background(100);
  //translate(width*0.5, height*0.5, 0);
  //rotateX(TAU*0.666);
  //rotateY(TAU*0.00);
  //rotateZ(TAU*0.125);
  
  //rectMode(CENTER);
  //cover = createShape(RECT, 0, 0, wideoffset*2.0, talloffset*2.0);

  //book.addChild(cover);

  shape(book);
  

}
