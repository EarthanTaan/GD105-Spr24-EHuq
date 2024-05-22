/**  Revision: I like this one, so I don't think I'll do much to the code, but I will take this
opportunity to fill in the missing comments.

This is a series of nested wireframe boxes each rotating at the same speed. The differences in
size and distance produce different rotational rates due to the depth of the 3D space - which
is exactly what I was counting on. I think I'm using these math words wrong; speed, rate, etc. But
I think you can understand what I mean. 

When I first attempted to recreate a kind of low-framerate glow/flicker, the effect was very
unpleasant, so instead I slowed it way way down to a slow, almost tidal throb.
*/

void setup() {
//The moment I saw what moire is, I knew I was going to do it in 3D.
  size(500, 500, P3D);
}

void draw() {
  background(#061567);  //Not black, but a kind of midnight color.
  translate(width/2, height/2);
  strokeWeight(1.5);
  colorMode(HSB, 360, 100, 100);
  stroke(120, 100, 90 + 10 * sin(TAU * frameCount * 0.005));  //retro greenscreen glow
  noFill();

  float boxSize = width;

  for (int i = 0; i < 50; i ++) {
    rotateY(frameCount * 0.0001);
    rotateX(frameCount * 0.0002);
    box(boxSize);
    boxSize -= 3;
  }
  
  for (int i = 0; i < 50; i ++) {
    rotateY(frameCount * -0.0002);
    rotateX(frameCount * -0.0001);
    box(boxSize);
    boxSize -= 5;
  }
  
  if (frameCount == 530) {save("GD105 A3R3 Output.png");}
}
