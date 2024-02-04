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
  size(1000, 1000);

}

void draw(){
// Draw background
  background(#71174a);
//Draw big mid-tone X
  PVector xtop = new PVector(-180,-33);
  PVector xbot = new PVector(1178, 1377);
  
  strokeCap(PROJECT);
  stroke(#882b5d);
  strokeWeight(326);
  line(xtop.x, xtop.y, xbot.x, xbot.y);
  line(xtop.x, xbot.y, xbot.x, xtop.y);
 

// Draw Square in lower portion, same color as BG
  fill(#71174a);
  noStroke();
  square(184, 332, 610);
  
// Draw light-tone V
  fill(#892d60);
  triangle(900,900, 950,950, 825,825);
  
//guideline
  stroke(0);
  strokeWeight(1);
  line(width/2,0, width/2,height);
  line(0,height/2, width,height/2);
  
// Draw little pale-tone square

// Draw BG-color lines

}
