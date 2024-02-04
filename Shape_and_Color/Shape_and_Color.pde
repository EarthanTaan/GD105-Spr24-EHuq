/* The Shape and Color Piece, Prompt 2
Kamal Boullata "Lam Alif" (1983)
Original size: 51 × 51 cm
Colors Reference
1: #71174a
2: #882b5d
3: #892d60
4: #a23727
*/

void setup(){
  size(900, 900);

}

void draw(){
// Draw background
  background(#71174a);
//Draw big mid-tone X
  PVector xtop = new PVector(-180,-33);
  PVector xbot = new PVector(1124, 1246);
  
  strokeCap(PROJECT);
  stroke(#882b5d);
  strokeWeight(303);
  line(xtop.x, xtop.y, xbot.x, xbot.y);
  line(xtop.x, xbot.y, xbot.x, xtop.y);

// Draw Square in lower portion, same color as BG
  fill(#71174a);
  noStroke();
  square(211, 336, 507);
  
// Draw light-tone V
  stroke(#892d60);
  strokeCap(SQUARE);
  

// Draw little pale-tone square

// Draw BG-color lines

}
