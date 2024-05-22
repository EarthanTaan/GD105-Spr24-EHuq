/* Revision: This is another one I'm reluctant to touch.
Update: I was massively overthinking the lerp code to make the key elements move into place.
With this revision, the piece is fully in line with my original vision for it.
 
 This calender renders the current date as a color. Month, week, and day will be represented
 by hue, saturation, and maybe brightness. (Which for which remains to be determined.)
 This will create a calendar with much less clearly defined borders between units of time,
 producing a tool which deliberately obfuscates precision instead of providing it.
 Finishing note: This was a much longer but I saw many places to condense the code. I also wanted
 to animate the guide's dis/appearance but I think it may be wise to spend that time on
 other work. This is now both functional and very near my original vision for it, so I'm going to
 call it good here.*/

int barThickness, horiMargin;
float horiBleed, vertBleed, barLength, vertMargin, marginTarg, rate;

void setup() {
  size(375, 100);
  windowTitle("The unCalendar");
  vertMargin = -15;
  horiMargin = 10;
  vertBleed = vertMargin * 2;  //bleed needs to account for both opposite margins.
  horiBleed = horiMargin * 2;
  barThickness = 10;
  barLength = width - horiBleed;
  rate = marginTarg - vertMargin;    //the rate at which is slids into or out of view.
}

void draw() {
  //make the background the date indicator. colorMode() comes with a map-like function, fortunately.
  colorMode(HSB, 11, 30, 100);
  background(month(), day(), 90);

  //The guide auto-hides and auto-appears when the mouse rolls over the middle.
  if (mouseX > 20 && mouseX < width -20 && mouseY > 20 && mouseY < height - 20) {
    marginTarg = 10;
    vertMargin = lerp(vertMargin, marginTarg, 0.10);
  } 
  else {
    marginTarg = -15;
    vertMargin = lerp(vertMargin, marginTarg, 0.10);
  }  

  //Draw a hue gradient along the top edge which serves as a translation guide.
  for (int i = 0; i < barLength; i++) {
    colorMode(HSB, barLength, 30, 100);
    stroke(i, day(), 90);
    line(horiMargin + i, vertMargin, horiMargin + i, vertMargin + barThickness);

    colorMode(HSB, 11, barLength, 100);
    stroke(month(), i, 90);
    line(horiMargin + i, height - vertMargin, horiMargin + i, height - vertMargin - barThickness);
  }

  for (int i = 0; i < barLength; i++) {
    //month segments
    stroke(0);
    line(horiMargin + barLength / 12 * i, vertMargin, horiMargin + barLength / 12 * i, vertMargin * 2);
    //day segments
    line(horiMargin + barLength / 31 * i, height - vertMargin, horiMargin + barLength / 31 * i, height - vertMargin * 2);
  }

  if (mousePressed == true) {
    save("GD105 Spr24 EHuq A3R1 output.png");
  }
}
