int x1 = 225;
int y1 = 0;
int x2 = 225;
int y2 = 0;
int a = 15;
int fc = 0;
int fx1;
int fy1;
int fx2;
int fy2;
boolean tr = true;
void setup(){
  size(450,600);
  frameRate(45);
}
void draw()
{
  fill(10,10,25,15);
  rect(0,0,450,600);
  x2 = x2 + (int)(Math.random()*31) - a;
  y2 = y2 + (int)(Math.random()*31);
  strokeWeight(5);
  stroke(220,220,255);
  line(x1,y1,x2,y2);
  x1 = x2;
  y1 = y2;
  if(y1 > 300 && tr == true)
  {
    fc = fc + 1; 
    tr = false;
    fx1 = x1;
    fy1 = y1;
    fx2 = x2;
    fy2 = y2;
    a = a + 7;
  }
  if(fc >= 1)
  {
    fx2 = fx2 + (int)(Math.random()*31) - 6;
    fy2 = fy2 + (int)(Math.random()*31);
    strokeWeight(5);
    stroke(220,220,255);
    line(fx1,fy1,fx2,fy2);  
    fx1 = fx2;
    fy1 = fy2;
  }
  if(y2 > 600)
  {
    noStroke();
    fill(255,255,255,1);
    ellipse(x2,y2,85,85);
    fill(255,255,255,5);
    ellipse(x2,y2,170,170);
    fill(255,255,255,10);
    ellipse(x2,y2,340,340);
    fill(255,255,255,1);
    ellipse(fx2,fy2,85,85);
    fill(255,255,255,5);
    ellipse(fx2,fy2,170,170);
    fill(255,255,255,10);
    ellipse(fx2,fy2,340,340);
    x1 = (int)(Math.random()*201) - 100 + 225;
    y1 = 0;
    x2 = x1;
    y2 = 0;
    a = a - 7;
    tr = true;
  }
}