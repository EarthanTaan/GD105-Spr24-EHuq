/* For the Clock, to illustrate that time is fleeting, how about a descending count of
seconds remaining in the year? I don't think the computer clock holds this data, so I'll
need to cobble it together from what the clock does say. I assume this will require me to 
construct a sort of code abacus that tacks a set number of seconds onto the total based one
the month and date. */


PVector rocPos /*Rocket Position*/ = new PVector(width / 2, height / 2);

void setup(){
  windowTitle("The Clock Piece");
  size(400, 400);  //another small one, I think. I'll go bigger for the moire.
/*end of setup()*/ }

void draw(){
  background(255);
  rocPos.set(width/2 + noise(frameCount)*5, height/2 + noise(frameCount)*5);

  curve(rocPos.x + 252, rocPos.y - -54,
    rocPos.x + 50, rocPos.y - 50, 
    rocPos.x - 50, rocPos.y + 50, 
    rocPos.x - -49, rocPos.y + 251);
  
  windowMove(531, int(height * 1.36));
/*Create a variable that will store the value for the number of seconds, as informed/constructed
by the Calendar functions.
*/
/*end of draw()*/}

void rocketShake(){

}
