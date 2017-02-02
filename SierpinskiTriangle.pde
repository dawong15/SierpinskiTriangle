//int a=((int)(Math.random()*255));
//int y=((int)(Math.random()*255));
//int e=((int)(Math.random()*255));
public void setup()
{
size(400,400);
noLoop();
}
public void draw()
{
background(50);
noStroke();
sierpinski(50,400,300);
}
public void mouseClicked()//optional
{
//fill(a,y,e);
fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
redraw();
}
public void sierpinski(int x, int y, int len) 
{
if(len<=20)
	triangle(x,y,x+len/2,y-len,x+len,y);
else
{
	sierpinski(x,y,len/2);
	sierpinski(x+len/2,y,len/2);
	sierpinski(x+len/4,y-len/2,len/2);
}

}
