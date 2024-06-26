/* Revision: Absolutely not, I'm not touching this.
Update: I thought noSmooth might make it prettier; it didn't. I thought noLoop might make it
render more quickly; it didn't. No improvements made.

The Album Cover Piece
 This will be an original cover for the score for 'Final Fantasy Tactics', by Hitoshi Sakimoto
 and Masaharu Iwata.
 Dissatified with the album covers I found, I imagined instead what kind of
 album cover I wanted to make. I had an image in my mind of a tilted chessboard-like shape, and
 initially thought of making "the soundtrack to Chess," with two Kings apearing alone on a
 a simplified 3x3 board. Then the thought popped into my head to add a 3rd king in the
 middle for a more intruiging image, and which made me think of the plot of the game
 'Final Fantasy Tactics (dir. Yasumi Matsuno, Squaresoft, 1997)'.
 This led me to add a pawn to the composition, representing the main character's role in the plot,
 and turn the chessboard into a thick book, representing the game's theme of unearthed history and
 old records.
 For this piece I will be attempting to construct a 3D object, and then partially rotate it to
 achieve the desired image. This may be very foolish, as I have not worked with Processing's 3D
 renderer at all - but it is my belief that this will ultimately be a more efficient and effective
 approach than trying to render the image purely in 2D.
 */

// Before Setup: Create variables
/** Variables are labeled below, when initialized. */
float whsqOff, blsqOff, thOff, htOff, top, bot, left, right, front, back, bend;
PShape spine, page, board, backcover, book, whsq, B1, C2, B3, A2;
PFont altima;
String title, credits;
PImage black_marble, leather, white_marble;

// Setup: Most album covers are squares, so we'll go with that.
// Create the chessboard/book 3D object to call in draw().

void setup() {
  size(900, 900, P3D);
  altima = createFont("Altima.otf", 60);
  textFont(altima);
  windowTitle("The Album Cover Piece");
  title = new String("Final Fantasy Tactics");
  credits = new String("Hitoshi Sakimoto and Masaharu Iwata");
  black_marble = loadImage("black marble.jpg");
  leather = loadImage("leather.jpg");
  white_marble = loadImage("white marble.jpg");
  textureMode(NORMAL);
  rectMode(CENTER);

//book dimensions
  noStroke();
  whsqOff = 150.0;      //white square offset
  blsqOff = 50.0;       //black square offset
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
      spine.texture(leather);
      spine.vertex(left, top, front, 1, 0);
      spine.vertex(left, bot, front, 1, 1);
      spine.vertex(bend, top, front-30.00, 0, 0);
      spine.vertex(bend, bot, front-30.00, 0, 1);
      spine.vertex(bend, top, back+30.00, 0, 0);
      spine.vertex(bend, bot, back+30.00, 0, 1);
      spine.vertex(left, top, back, 0, 0);
      spine.vertex(left, bot, back, 0, 1);
    spine.endShape(CLOSE);

  //The following creates the page-edge, but is copied from the spine geometry, so I have to translate
  //it into position.
  
  fill(255);
  page = createShape();
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
  page.translate(0, bot*2-15, 0);  //drop it down

  board = createShape();
    board.beginShape();
      board.texture(leather);
      board.vertex(left, top, front, 0, 0);
      board.vertex(right, top, front, 1, 0);
      board.vertex(right, bot, front, 1, 1);
      board.vertex(left, bot, front, 0, 1);
    board.endShape();
  
  fill(#836E28);
  backcover = createShape();
  backcover = createShape(RECT, 0, 0, left*2, htOff*2);
  backcover.translate(0, 0, -front);
  
//chessboard pattern. One large white square and 4 smaller black squares. Black squares are named after their board ID.
  whsq = createShape();
    whsq.beginShape();
      whsq.texture(white_marble);
      whsq.vertex(-whsqOff, -whsqOff, front+0.01, 0, 0);
      whsq.vertex(whsqOff, -whsqOff, front+0.01, 1, 0);
      whsq.vertex(whsqOff, whsqOff, front+0.01, 1, 1);
      whsq.vertex(-whsqOff, whsqOff, front+0.01, 0, 1);
    whsq.endShape();
    
  B1 = createShape();
    B1.beginShape();
      B1.texture(black_marble);
      B1.vertex(-blsqOff, -blsqOff, front+0.02, 0, 0);
      B1.vertex(blsqOff, -blsqOff, front+0.02, 1, 0);
      B1.vertex(blsqOff, blsqOff, front+0.02, 1, 1);
      B1.vertex(-blsqOff, blsqOff, front+0.02, 0, 1);
    B1.endShape();
  B1.translate(0, -100, 0);
  
  C2 = createShape();
    C2.beginShape();
      C2.texture(black_marble);
      C2.vertex(-blsqOff, -blsqOff, front+0.02, 0, 0);
      C2.vertex(blsqOff, -blsqOff, front+0.02, 1, 0);
      C2.vertex(blsqOff, blsqOff, front+0.02, 1, 1);
      C2.vertex(-blsqOff, blsqOff, front+0.02, 0, 1);
    C2.endShape();
  C2.translate(100, 0, 0);
  
  B3 = createShape();
    B3.beginShape();
      B3.texture(black_marble);
      B3.vertex(-blsqOff, -blsqOff, front+0.02, 0, 0);
      B3.vertex(blsqOff, -blsqOff, front+0.02, 1, 0);
      B3.vertex(blsqOff, blsqOff, front+0.02, 1, 1);
      B3.vertex(-blsqOff, blsqOff, front+0.02, 0, 1);
    B3.endShape();
  B3.translate(0, 100, 0);
  
  A2 = createShape();
    A2.beginShape();
      A2.texture(black_marble);
      A2.vertex(-blsqOff, -blsqOff, front+0.02, 0, 0);
      A2.vertex(blsqOff, -blsqOff, front+0.02, 1, 0);
      A2.vertex(blsqOff, blsqOff, front+0.02, 1, 1);
      A2.vertex(-blsqOff, blsqOff, front+0.02, 0, 1);
    A2.endShape();
  A2.translate(-100, 0, 0);

//assemble the book
  book = createShape(GROUP);
  book.addChild(board);
  book.addChild(spine);
  book.addChild(page);
  book.addChild(whsq);
  book.addChild(B1);
  book.addChild(C2);
  book.addChild(B3);
  book.addChild(A2);
  book.addChild(backcover);

}

void draw() {
  background(#e3d6ae);  //color-picked from the game's dialogue box bg
  translate(width*0.50, height*0.50);
  push();  //save centered origin
  ambientLight(175, 175, 175);  //needed to illuminate sides of book
  directionalLight(205, 205, 205, 0, 1, 0);  //bright light shining down from above for a harsh look
    
  rotateX(TAU*0.15);  //spin into position for book
  rotateY(TAU*0.00);
  rotateZ(TAU*-0.125);

  shape(book);  //call in fully formed book from setup()
  pop();  //rescenter origin, un-rotate
  push();  //re-save
  
/*For the chess-piece icons, I found it more efficient to create them entirely within draw() 
so that I could make adjustments, rather than trying to build them in setup() as I did with the 
book - because introducing textures to the 3d object made the program take significantly longer
to begin running, so I started wanting to get as much work done in one Tweak-run as possible.
*/
  //crown dimensions: the X offsets and Y coords for the centerpoint, zeniths, right&left points, and base
  int ctrPt, zenXOff, zenY, RLptXOff, RLptY, baseXOff, baseY;
  ctrPt = -100;
  zenXOff = 18;
  zenY = -33;
  RLptXOff = 45;
  RLptY = -70;
  baseXOff = 35;
  baseY = 0;
    
//Delita Crown
  translate(0, -214, 0);
  fill(#AF3C27);
  createShape();
    beginShape();
      vertex(0, ctrPt);  //beginning at the centrepoint of the crown
      vertex(zenXOff, zenY);  //right zenith
      vertex(RLptXOff, RLptY);  //right point
      vertex(baseXOff, baseY);  //right base
      vertex(-baseXOff, baseY);  //left base
      vertex(-RLptXOff, RLptY); //left point
      vertex(-zenXOff, zenY); //left zenith
    endShape();
    
//Larg Crown
  translate(width*-0.43, height*0.22);
  fill(0);
  createShape();
    beginShape();
      vertex(0, ctrPt);  //beginning at the centrepoint of the crown
      vertex(zenXOff, zenY);  //right zenith
      vertex(RLptXOff, RLptY);  //right point
      vertex(baseXOff, baseY);  //right base
      vertex(-baseXOff, baseY);  //left base
      vertex(-RLptXOff, RLptY); //left point
      vertex(-zenXOff, zenY); //left zenith
    endShape();
    
//Goltana Crown
  translate(width*0.86, 0);
  fill(255);
  createShape();
    beginShape();
      vertex(0, ctrPt);  //beginning at the centrepoint of the crown
      vertex(zenXOff, zenY);  //right zenith
      vertex(RLptXOff, RLptY);  //right point
      vertex(baseXOff, baseY);  //right base
      vertex(-baseXOff, baseY);  //left base
      vertex(-RLptXOff, RLptY); //left point
      vertex(-zenXOff, zenY); //left zenith
    endShape();
  pop();  //reset/recenter
  push(); //re-save
  
//Ramza Pawn
  translate(0, -22, 258.5);
  fill(#A884F7);
  stroke(0);
  strokeWeight(2);  //needs an outline to pop
  triangle(0, -40, 11, 0, -11, 0);
  translate(0, 0, 0.53);
  circle(0, -35, 20);
  translate(0, 0, 0.53);
  noStroke();
  circle(0, -25.74, 6.53); //hide the overlapping outline

  pop();  //restore centered angle for what follows
  lights();
  textAlign(CENTER);
  text(title, 0, height*-0.40);
  textSize(30);
  text("The Original Score for", 0, height*-0.45);
  textSize(50);
  text(credits, 0, height*0.45);
    
  // Don't forget to save the final image in a .png
  if (frameCount == 1){save("GD105 Spr24 EHuq a1r5 output.png");}
  noLoop();  //Because rendering the image is so intensive, I added this so it only renders once.
}
