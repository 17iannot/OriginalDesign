int[] map;
final int screenWidth = 900, screenHeight = 750;
final float tileSize = 25;
ArrayList<Shape> shapeBuffer = new ArrayList<Shape>();

void setup(){
  size(screenWidth,screenHeight);
  frameRate(60);
  //colorMode(RGB,255);
  for(int i = 0; i <= screenWidth-150; i++){
    if(i % tileSize == 0){
      line(i,0,i,screenHeight);
    }
  }
  for(int i = 0; i <= screenHeight; i++){
    if(i % tileSize == 0){
      line(0,i,screenWidth-150,i);
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
  Square s = new Square(Math.round(mouseX - (mouseX % tileSize)),Math.round(mouseY - (mouseY % tileSize)));
  shapeBuffer.add(s);
}

public interface IEntity {
  public void tick();
  public void render();
}

public abstract class Shape implements IEntity{
 public int x,y;
 public int[] c = {0,0,0};
 public Shape(int x , int y){
    this.x = x;
    this.y = y;
 }
}

public class Square extends Shape{
 public Square(int x , int y){
    super(x,y);
 }
 public void tick(){
  this.c[0]+= Math.random() * 11-5;
  this.c[1]+= Math.random() * 11-5;
  this.c[2]+= Math.random() * 11-5;
  if(this.c[0] < 0)this.c[0] = 255;
  if(this.c[0] > 255)this.c[0] = 0; 
 }
 public void render(){
  fill(this.c[0],this.c[1],this.c[2]);
  rect(x,y,tileSize,tileSize);
 } 
}
