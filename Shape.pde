public abstract class Shape implements IEntity{
 public int x,y;
 public boolean hasHitBox;
 public int[] c = {0,0,0};
 public Shape(int x , int y, boolean hasHitBox, int[] c){
    this.x = x;
    this.y = y;
    this.hasHitBox = hasHitBox;
    this.c = c;
 }
 
}

