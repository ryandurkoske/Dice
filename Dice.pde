void setup()
{
  noLoop();
  size(505,505);
}
void draw()
{
  for(int x = 5; x < 495; x+= 45){
    for(int y = 5; y < 495; y+= 45){
      Die foo = new Die(x,y,40);
      foo.roll();
      foo.show();
    }
  }
  Die foo = new Die(95,95,310);
  foo.roll();
  foo.show();
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int x, y, s;
  byte val = 0;
  Die(int x, int y, int s)
  {
    this.x = x;
    this.y = y;
    this.s = s;
  }
  void roll()
  {
    val = (byte)Math.ceil(Math.random()*6);
  }
  void show()
  {
    rect(x,y,s,s);
    pushMatrix();
    translate(x,y);
    fill(0);
    switch(val){
      case 1:
        s1();
        break;
      case 2:
        s2();
        break;
      case 3:
        s3();
        break;
      case 4:
        s4();
        break;
      case 5:
        s5();
        break;
      case 6:
        s6();
        break;
    }
    fill(255);
    popMatrix();
  }
  void s1(){
    ellipse(s*0.5,s*0.5,s*0.15,s*0.15);
  }
  void s2(){
    ellipse(s*0.2,s*0.8,s*0.15,s*0.15);
    ellipse(s*0.8,s*0.2,s*0.15,s*0.15);
  }
  void s3(){
    ellipse(s*0.5,s*0.5,s*0.15,s*0.15);
    ellipse(s*0.2,s*0.8,s*0.15,s*0.15);
    ellipse(s*0.8,s*0.2,s*0.15,s*0.15);
  }
  void s4(){
    ellipse(s*0.8,s*0.8,s*0.15,s*0.15);
    ellipse(s*0.2,s*0.8,s*0.15,s*0.15);
    ellipse(s*0.8,s*0.2,s*0.15,s*0.15);
    ellipse(s*0.2,s*0.2,s*0.15,s*0.15);
  }
  void s5(){
    ellipse(s*0.8,s*0.8,s*0.15,s*0.15);
    ellipse(s*0.2,s*0.8,s*0.15,s*0.15);
    ellipse(s*0.8,s*0.2,s*0.15,s*0.15);
    ellipse(s*0.2,s*0.2,s*0.15,s*0.15);
    ellipse(s*0.5,s*0.5,s*0.15,s*0.15);
  }
  void s6(){
    ellipse(s*0.8,s*0.8,s*0.15,s*0.15);
    ellipse(s*0.2,s*0.8,s*0.15,s*0.15);
    ellipse(s*0.8,s*0.2,s*0.15,s*0.15);
    ellipse(s*0.2,s*0.2,s*0.15,s*0.15);
    ellipse(s*0.8,s*0.5,s*0.15,s*0.15);
    ellipse(s*0.2,s*0.5,s*0.15,s*0.15);
  }
}
