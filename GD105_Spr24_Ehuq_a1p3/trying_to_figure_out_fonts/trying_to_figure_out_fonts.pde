/* Potential Fonts:
Algerian
Castellar
Parchment-Regular
SourceCodePro-Light
Stencil
*/
void setup(){

  size(900, 900);
  background(0);


}

void draw(){

  PFont font = createFont("Castellar", 103);
 
  translate(height/2, width/2);

  textFont(font);
  rectMode(CENTER);
  textAlign(CENTER, CENTER);
  fill(155);
  text("crime against property is relatively unimportant",
    0, 0,
    width, height
  );
  fill(255);
  rotate(TAU*(mouseX*0.1));
  text("crime against property is relatively unimportant",
    0, 0,
    width, height
  );

  if (mousePressed == true) {
    save("spinnywords.png");
  }

}
