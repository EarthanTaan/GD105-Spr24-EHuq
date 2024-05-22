/* The Shape and Color Piece, Prompt 2
 Based on Kamal Boullata's "Lam Alif" (1983)
(This is older than me if it was revealed in Jan or early Feb.)
 Original size: 51 × 51 cm (turns out this is not true, the real piece is not square)
 Colors Reference
 1: #71174a dark purple
 2: #882b5d light purple
 3: #A13727 dark orange
 4: #BA4823 light orange

Revision: I could the transparency again on this one, but I think that may be
more trouble than it's worth in this case.
 */
PImage ref;

void setup() {
  size(900, 900);
  ref = loadImage("Lam Alif ref.png");
}

void draw() {
  // Draw background
  background(#71174a);

  //Draw big light-purple X
  PVector xtop = new PVector(width*-0.03, height*0.11);
  PVector xbot = new PVector(width*1.01, height*1.28);

  strokeCap(PROJECT);
  stroke(#882b5d);
  strokeWeight(284);
  line(xtop.x, xtop.y, xbot.x, xbot.y);
  line(xtop.x, xbot.y, xbot.x, xtop.y);

  // Draw dark-purple Square in lower portion
  PVector squp = new PVector(width*0.251, height*0.389);
  PVector sqdn = new PVector(width*0.755, height*0.940);

  noStroke();

  fill(#71174a);
  rectMode(CORNERS);
  rect(squp.x, squp.y, sqdn.x, sqdn.y);

  // Draw light-orange V
  fill(#BA4823);
  quad(
    sqdn.x, height*0.567,
    sqdn.x, height*0.754,
    width/2+76, sqdn.y,
    width/2-83, sqdn.y
    );

  quad(
    squp.x, height*0.561,
    squp.x, height*0.754,
    width/2-84, sqdn.y,
    width/2+54, sqdn.y
    );

  // Draw little dark-orange square
  fill(#A13727);
  int offset = 117;
  rect(
    width/2 - offset, height*0.611,
    width/2 + offset, height*0.893
    );

  // Draw dark-purple lines
  stroke(#71174a);
  strokeWeight(37);
  strokeCap(SQUARE);
  
  //smaller X shape
  line(
    width/2 - (offset * 1.55),
    height*0.570,
    width/2 + (offset * 0.57),
    height*0.866
    );
  line(
    width/2 + (offset * 1.55),
    height*0.565,
    width/2 - (offset * 0.54),
    height*0.863
    );
  
  //bottom line
  int off2 = 78;
  float lnlvl = height*0.872;
  strokeWeight(39);
  line(
    width/2 - off2, lnlvl,
    width/2 + off2, lnlvl
    );
  
  //ref.resize(width+ -146, height+ -75);
  //colorMode(100, 100);
  //tint(100, 50);
  //image(ref, 73, 55);
  
  if (frameCount == 1){save("GD105 Spr24 EHuq a1r2 output.png");}
}
