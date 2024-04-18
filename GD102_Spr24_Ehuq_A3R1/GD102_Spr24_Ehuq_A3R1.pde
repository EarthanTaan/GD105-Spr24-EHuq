/* This calender renders the current date as a color. Month, week, and day will be represented
by hue, saturation, and maybe brightness. (Which for which remains to be determined.) 
This will create a calendar with much less clearly defined borders between units of time, 
producing a tool which deliberately obfuscates precision instead of providing it. */

void setup(){
  size(375, 100);
  windowTitle("The unCalendar");
}

void draw(){
  //make the background the date indicator. colorMode() comes with a map-like function, fortunately.
  colorMode(HSB, 11, 30, 23);
  background(month(), day(), hour());
  
  //Draw a hue gradient along the top edge which serves as a translation guide.
  //Break hue into equal parts
  
  //Draw a saturation gradient 
  
  //The guide auto-hides and auto-appears when the mouse rolls over it.
  
  //Mouse click toggles auto-hide.
}
