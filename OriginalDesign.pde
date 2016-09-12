int[] coll;
final int screenWidth = 900, screenHeight = 750;
final float tileSize = 25;
ArrayList<Shape> shapeBuffer = new ArrayList<Shape>();

void setup(){
  size(screenWidth,screenHeight);
  frameRate(60);
  //colorMode(RGB,255);
  for(int i = 0; i <= screenWidth; i++){
    if(i % tileSize == 0){
      line(i,0,i,screenHeight);
    }
  }
  for(int i = 0; i <= screenHeight; i++){
    if(i % tileSize == 0){
      line(0,i,screenWidth,i);
    }
  }
}

void tick(){
 for(Shape s : shapeBuffer)
    s.tick();
}

void draw(){
  tick();
  for(Shape s : shapeBuffer)
    s.render();
}

void mouseDragged(){
  Square s = new Square(Math.round(mouseX - (mouseX % tileSize)),Math.round(mouseY - (mouseY % tileSize)),true, new int[]{0,0,0});
  shapeBuffer.add(s);
}
