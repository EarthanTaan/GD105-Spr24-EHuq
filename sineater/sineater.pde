float rad, theta, wig;
PVector mid = new PVector();

void setup(){
  size(500, 500);
  background(#FFD379);
  //wig = 0;
  //frameRate(3);
}

void draw(){
  translate(width/2, height/2);
  strokeWeight(2);
  stroke(0);
  fill(255);
  
  for(frameCount = 0; frameCount == 300;){
    wig = lerp(-80, 100, 2);
  }
  mid.set(0,0);
  rad = width * 0.50;
  theta = TAU / wig;
  
  
  triangle(
    mid.x, mid.y - rad * sin(theta),    //pt 1 (pointing up)
    mid.x + rad * cos(theta), mid.y + rad * sin(theta),    //pt 2
    mid.x - rad * cos(theta), mid.y + rad * sin(theta)   //pt 3
  );
  
  
}
