// the code in this block runs once
// at the beginning of the program
void setup(){
  // everyone plays Metroid in 2024
  
  size(500, 500);
}

// the code in this block runs once
// every frame of the program
void draw(){
  PVector ptA = new PVector(175, 225);
  PVector ptB = new PVector(325, 225);
  PVector ptC = new PVector(250, 300);
  
   background(200);
   strokeWeight(1);
   stroke(0);
   
   fill(#4d7daa);
   circle(250, 225, 160);
   fill(252);
   
   triangle(ptA.x, ptA.y, ptB.x, ptB.y, ptC.x, ptC.y);
   
   quad(63, 224, 425, 281, 60, 205, 421, 221);
   // tweaking these sucks on a trackpad
   
   square(225, 225, 50);
   
   stroke(#f21f33);
   line(98, 105, 381, 375);
   
   strokeWeight(5);
   point(260, 240);
   point(240, 260);


   /* (multi-line comment)
   The following saves the canvas as an image on
   the first frame only:
   
if (frameCount == 1){save("output.png");}

   (There are other ways/times to save,
   such as on mouse press)
   */
}
