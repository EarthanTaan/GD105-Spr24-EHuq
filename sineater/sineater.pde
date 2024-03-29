PVector triStart = new PVector();
PVector sizenpoint = new PVector();
PVector triEnd = new PVector();

void setup(){
  size(900, 900);
  background(#FFD379);
}

void draw(){
  //background(#FFD379);
  strokeWeight(2);
  stroke(0);
  //noFill();
  translate(width/2, height/2);
  
  spiroTri(0.00, 0.00, 0.025, -0.25);
  
}

//draw an equilateral triamgle around a central point
void spiroTri(float midX, float midY, float rad, float yoke){
  float eqDist = TAU / 3;
    rad *= width;  //radius
    yoke *= TAU;  //tripoint prime, from which the other two will be derived
    midX *= width;  //X of middle of triangle 
    midY *= height;  //Y of middle of triangle
  for(int i = 1; i<100; i++){
    triangle(
      midX + rad * cos(yoke), midY + rad * sin(yoke),  //Tripoint Prime
      midX + rad * cos(yoke + eqDist), midY + rad * sin(yoke + eqDist),  //pt 2
      midX + rad * cos(yoke - eqDist), midY + rad * sin(yoke - eqDist)  //pt 3
    );
    midX += width*0.10*cos(midX);
    midY += height*0.10*sin(midY);
    yoke += 0.10;
  }
}
