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

// Before Setup: Create a font variable, and save any Strings I wanna use
// (like the album title probably).

// Do I need to construct the chessboard book in setup or before setup? Look into this.
// Create king and pawn shapes to call in later. These will be flat 2D icons.
// Create the chessboard/book 3D object to call in later.

// Setup: Most album covers are squares, so we'll go with that.
void setup(){
  size(900, 900, P3D);
  windowTitle("The Album Cover Piece");
}

// Draw: Bring in the chess board first so the pieces can be drawn on top.
void draw(){
  background(#FFFCE5);
  translate(width*0.5, height*0.5);
  rotateX(-0.75);
  rotateY(0.80);
  rotateZ(0.00);
  noFill();
  box(400, 100, 399);
// Don't forget to save the final image in a .png
}
