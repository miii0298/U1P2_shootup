float pX = -1000;
float pY = -1000;

//target variables
float tX = 400;
float tY = 200;

void setup()
{
  size(800,800);
}
void draw()
{
  background(192,241,247);
  
  //Draw Target Circle
  ellipse(tX, tY, 50,50);
  
  //Projectile
  ellipse(pX, pY, 10,10);
  //Move our projectile up constantly
  pY = pY - 3.5;
  
  float D = dist(tX, tY, pX, pY);
  if(D < 25 + 5)  
    //Collision!
    background(247,192,192);
}
void mouseReleased()
{
  pX = mouseX;
  pY = mouseY;

  }


    
    
