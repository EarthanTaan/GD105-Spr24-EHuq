/* The Album Cover Piece
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
float thOff, htOff, top, bot, left, right, front, back, bend;
PShape spine, page, board, book;
PFont altima;
String title, credits;

  // Setup: Most album covers are squares, so we'll go with that.
  // Create king and pawn shapes to call in later. These will be flat 2D icons.
  // Create the chessboard/book 3D object to call in later.

void setup() {
  size(900, 900, P3D);
  altima = createFont("Altima.otf", 60);
  textFont(altima);
  windowTitle("The Album Cover Piece");
  title = new String("Final Fantasy Tactics");
  credits = new String("Hitoshi Sakimoto and Masaharu Iwata");

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
  page.translate(0, bot*2, 0);  //drop it down

  rectMode(CENTER);
  board = createShape(RECT, 0, 0, left*2, htOff*2);
  board.translate(0, 0, front);

  book = createShape(GROUP);
  book.addChild(board);
  book.addChild(spine);
  book.addChild(page);

}

// Draw: Bring in the chess board first so the pieces can be drawn on top.
void draw() {
  background(#FFFCE5);
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
  // Don't forget to save the final image in a .png
}
