/* The Shape and Color Piece, Prompt 2
Kamal Boullata "Lam Alif" (1983)
Original size: 51 × 51 cm
Colors Reference
1: #71174a dark purple
2: #882b5d light purple
3: #A13727 dark orange
4: #BA4823 light orange
*/

void setup(){
  size(1000, 1000);

}

void draw(){
// Draw background
  background(#71174a);
  
//Draw big light-purple X

  PVector xtop = new PVector(width*-0.05, height*0.10);
  PVector xbot = new PVector(width*1.05, height*1.25);
  
  strokeCap(PROJECT);
  stroke(#882b5d);
  strokeWeight(305);
  line(xtop.x, xtop.y, xbot.x, xbot.y);
  line(xtop.x, xbot.y, xbot.x, xtop.y);

// Draw dark-purple Square in lower portion

  PVector squp = new PVector(width*0.250, height*0.383);
  PVector sqdn = new PVector(width*0.750, height*0.944);

  noStroke();
  
  fill(#71174a);
  rectMode(CORNERS);
  rect(squp.x, squp.y, sqdn.x, sqdn.y);
  
// Draw light-orange V
  fill(#BA4823);
  quad(
    sqdn.x, height*0.500,
    sqdn.x, height*0.750,
    width/2+100, sqdn.y,
    width/2-100, sqdn.y
  );
    
  quad(
    squp.x, height*0.500,
    squp.x, height*0.750,
    width/2-100, sqdn.y,
    width/2+100, sqdn.y
  );
  
// Draw little dark-orange square

// Draw dark-purple lines

//guidelines
  stroke(0);
  strokeWeight(1);
  line(width/2,0, width/2,height);
  line(0,height/2, width,height/2);

//Orphaned code graveyard, no longer useful but preserved for posterity
/* palette check
  noStroke();
  fill(#71174a);
  square(81,21,50);
  fill(#882b5d);
  square(140,54,50);
  fill(#A13727);
  square(197,112,50);
  fill(#BA4823);
  square(251,172,50);
*/

}
