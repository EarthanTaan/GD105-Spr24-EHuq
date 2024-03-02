float thOff, htOff, top, bot, left, right, front, back, bend;
PShape spine, page, board, book;

void setup(){
  size(800, 800, P3D);
  noStroke();  //start copying from here <-------<<<<<
  fill(#AABFDB);        //placeholder color
  thOff = 50.00;        //book thickness offset
  htOff = height*0.25;  //book height offset (doubles as width offset)
  top = -htOff;
  bot = htOff;
  left = -htOff;
  bend = left-15;
  right = htOff;
  front = thOff;
  back = -thOff;

//This creates the book's spine in the correct place.
  spine = createShape();
    spine.beginShape(QUAD_STRIP);
      spine.vertex(left, top, front);
      spine.vertex(left, bot, front);
      spine.vertex(bend, top, front-30.00);
      spine.vertex(bend, bot, front-30.00);
      spine.vertex(bend, top, back+30.00);
      spine.vertex(bend, bot, back+30.00);
      spine.vertex(left, top, back);
      spine.vertex(left, bot, back);    
    spine.endShape(CLOSE);

//This creates the page-edge, but is copied from the spine geometry, so I have to translate
//it into position.
  page = createShape();  //page
    page.beginShape(QUAD_STRIP);
      page.vertex(left, top, front);
      page.vertex(left, bot, front);
      page.vertex(bend, top, front-30.00);
      page.vertex(bend, bot, front-30.00);
      page.vertex(bend, top, back+30.00);
      page.vertex(bend, bot, back+30.00);
      page.vertex(left, top, back);
      page.vertex(left, bot, back);    
    page.endShape(CLOSE);
    page.rotateZ(TAU*0.25);  //flip it up
    page.translate(0, bot*2, 0);  //drop it down
  
  rectMode(CENTER);
  board = createShape(RECT, 0, 0, left*2, htOff*2);
  board.translate(0, 0, front);
  
  book = createShape(GROUP);
    book.addChild(board);
    book.addChild(spine);
    book.addChild(page);

  
}

void draw(){
  background(0);
  lights();
  translate(width*0.50, height*0.50);
  push();
  rotateX(TAU*0.15);
  rotateY(TAU*0.00);
  rotateZ(TAU*-0.125);
  
  shape(book);
  pop();
  
  textAlign(CENTER);
  text("Album Title", 0, height*-0.40);

  
}

/* End of Code. What follows is the Code Archive
  fill(#AABFDB);
  translate(width*0.50, height*0.50);
  
  thOff = 32.33;
  htOff = height*0.25; 
  top = -htOff;
  bot = htOff;
  left = width*-0.25;
  bend = left-15;
  right = width*0.50;
  front = thOff;
  back = -thOff;

  beginShape(QUAD_STRIP);
    vertex(left, top, front);
    vertex(left, bot, front);

    vertex(bend, top, front-20.00);
    vertex(bend, bot, front-20.00);

    vertex(bend, top, back+20.00);
    vertex(bend, bot, back+20.00);

    vertex(left, top, back);
    vertex(left, bot, back);
    
  endShape(CLOSE);
*/
