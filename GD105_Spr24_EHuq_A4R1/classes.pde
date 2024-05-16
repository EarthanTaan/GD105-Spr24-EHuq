class WordTile {
  //fields
  String poem;
  String[] wordBank;
  PVector wordPlace;

  //constructor
  WordTile() {
    //Small Blue Thing, by Suzanne Vega (excerpt)
    poem = new String("Today I am a small blue thing Like a marble or an eye With my knees against my mouth I am perfectly round I am watching you I am cold against your skin You are perfectly reflected I am lost inside your pocket I am lost against your fingers I am falling down the stairs I am skipping on the sidewalk I am thrown against the sky I am raining down in pieces I am scattering like light Scattering like light Scattering like light Today I am a small blue thing Made of China, made of glass I am cool and smooth and curious, I never blink I am turning in your hand Turning in your hand Turning in your hand Small blue thing Turning in your hand");
    wordBank = split(poem, ' ');
    wordPlace = new PVector(width * -0.5, 0, 0);
  }

  //methods (functionality)
  void go() {
    rotateY(PI);
    textSize(40);
    for (String w : wordBank) {
      fill(255);
      textAlign(CENTER);
      text(w, wordPlace.x, wordPlace.y, wordPlace.z);
    }
  }
}
