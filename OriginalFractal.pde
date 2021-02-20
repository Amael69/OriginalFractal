  public void setup(){
  size(800,800);
  background(0);
  fill (0);
}

public void draw(){
myFractal(400,400,400);
}

public void mousePressed(){
  fill ((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
}

public void myFractal(int x, int y, int size){
  ellipse(x,y,size,size);
  if(size>5){
    myFractal(x-size/2,y-size/2,size/2);
    myFractal(x+size/2,y+size/2,size/2);
    myFractal(x+size/2,y-size/2,size/2);
    myFractal(x-size/2,y+size/2,size/2);
  }
}
