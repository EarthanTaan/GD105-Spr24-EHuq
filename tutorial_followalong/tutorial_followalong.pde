// the code in this block runs once
// at the beginning of the program
void setup(){
  // everyone plays Metroid in 2024
  
  size(500, 500);
}

// the code in this block runs once
// every frame of the program
void draw(){
   background(142);
   strokeWeight(1);
   stroke(0);
   
   triangle(165, 225, 335, 225, 250, 300);
   
   quad(63, 224, 425, 281, 60, 205, 421, 221);
   // tweaking these sucks on a trackpad
   
   square(225, 225, 50);
   
   stroke(#f21f33);
   line(98, 105, 381, 375);
   
   strokeWeight(5);
   point(260, 240);
   point(240, 260);

   
   
      
   // This saves the canvas as an image on the
   // first frame only:
   //if (frameCount == 1) {
   //  save("output.png");
   //}
   // end code snippet. (There are other times
   // to save, such as on mouse press)
}
