class WordTile {
 
   //data (fields)
   //words, position, collision(?), size, color
   String content;
   PVector position;
   float size;
   color bg;
   color txtCol;
   
   //constructor
   WordTile (String read) {
     content = read;
     text(content, position.x, position.y);
     size = 30;
     fill = bg;
     txtCol = color(0);
   }
   
   //functionality (methods)
  void display () {}
  void movable() {}
  void collision() {}
  
}
