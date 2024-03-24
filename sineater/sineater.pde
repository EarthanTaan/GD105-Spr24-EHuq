PVector triStart = new PVector();
PVector sizenpoint = new PVector();
PVector triEnd = new PVector();

void setup(){
  size(900, 900);
  //background(#FFD379);
}

void draw(){
  //background(#FFD379);
  strokeWeight(2);
  stroke(0);
  noFill();
  
  triStart.set(0.10, 0.50);  //starting position of triangle spirograph arc
  triEnd.set(0.90, 0.50);  //end point for spirograph arc (hopefully)
  sizenpoint.set(0.05, 0.75);  //size and orientation of initial triangle
  
  //for(float i = frameCount * 0.01; i > 900; ){
  triStart.x = lerp(triStart.x, triEnd.x, 0.10);
  triStart.y = lerp(triStart.y, triEnd.y, 0.10);
  spiroTri(triStart.x, triStart.y, sizenpoint.x, sizenpoint.y);
  //}
  
}

//draw an equilateral triamgle around a central point
void spiroTri(float midX, float midY, float rad, float yoke){
  float eqDist = TAU / 3;
  rad *= width;  //radius
  yoke *= TAU;  //tripoint prime, from which the other two will be derived
  midX *= width;  //X of middle of triangle 
  midY *= height;  //Y of middle of triangle
  triangle(
    midX + rad * cos(yoke), midY + rad * sin(yoke),  //Tripoint Prime
    midX + rad * cos(yoke + eqDist), midY + rad * sin(yoke + eqDist),  //pt 2
    midX + rad * cos(yoke - eqDist), midY + rad * sin(yoke - eqDist)  //pt 3
  );
}
