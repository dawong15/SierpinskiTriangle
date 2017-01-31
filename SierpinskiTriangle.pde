public void setup()
{
  size(600,600);
  noLoop();
}
public void draw()
{
  //text("I am not responsible for any seizures", 200, 75);
  sierpinski(100,500,400);
}
public void mouseDragged()//optional
{
 

  fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));

  redraw();
}
public void sierpinski(int x, int y, int len) 
{
  if (len <= 15)
    triangle(x, y, x+len/2, y-len, x+len, y);
  else
  {
  sierpinski(x,y,len/2);
  sierpinski(x+len/2, y , len/2 );
  sierpinski(x+len/4 , y-len/2 , len/2);
  }
}
