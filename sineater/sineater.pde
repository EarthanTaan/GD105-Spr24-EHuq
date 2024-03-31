PVector triStart = new PVector();
PVector sizenpoint = new PVector();
PVector triEnd = new PVector();
color from, to;

void setup(){
  size(900, 900);
  background(50);
  noLoop();
  strokeWeight(1);
  noFill();
}

void draw(){
  translate(width/2, height/2);

  for(int i = 0; i<10; i++){
    stroke(lerpColor(from, to, i));
    spiroTri(random(-0.50,0.50), random(-0.50,0.50), random(0.01, 0.25), random(0.01, 1.00));
    from = color(random(255), random(255), random(255));
    to = color(random(255), random(255), random(255));
  }
}

//draw an equilateral triamgle around a central point
void spiroTri(float midX, float midY, float rad, float yoke){
  float eqDist = TAU / 3;
    rad *= width;  //radius
    yoke *= TAU;  //tripoint prime, from which the other two will be derived
    midX *= width;  //X of middle of triangle 
    midY *= height;  //Y of middle of triangle
  for(int i = 1; i<50; i++){    //draw many such triangles in an arc from the starting point
    triangle(
      midX + rad * cos(yoke), midY + rad * sin(yoke),  //Tripoint Prime
      midX + rad * cos(yoke + eqDist), midY + rad * sin(yoke + eqDist),  //pt 2
      midX + rad * cos(yoke - eqDist), midY + rad * sin(yoke - eqDist)  //pt 3
    );
    midX += width*0.015 * cos(yoke*0.25);
    midY += height*0.015 * sin(yoke*0.25);
    yoke += 0.75;
  }
}
