public class Square extends Shape{
 public Square(int x , int y,boolean hasHitBox,int[] c){
    super(x,y,hasHitBox,c);
 }
 public void tick(){
   for(int i = 0; i < this.c.length; i++){
     this.c[i] -= (int) Math.floor(Math.random() * 51)-25;
     if(this.c[i] > 255)
       this.c[i] = 0;
   }
 }
 public void render(){
  fill(this.c[0],this.c[1],this.c[2]);
  rect(x,y,tileSize,tileSize);
 } 
}
