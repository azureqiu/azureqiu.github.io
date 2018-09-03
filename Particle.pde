class Particle
{
  float xPos;
  float yPos;
  
  float xSpeed;
  float ySpeed;


  Particle()
  {
    xPos = random(0, width);
    yPos = random(0, height);
    xSpeed = random(-1,1);
    ySpeed = random(-1,1);
    
  
  }


  void update()
  {
    xPos += 2* xSpeed;
    yPos += 2* ySpeed;
    
    
    if(xPos > width){
      xPos = width;
      xSpeed = -xSpeed;
    }
    if(xPos < 0){
      xPos = 0;
      xSpeed = -xSpeed;
    }
    if(yPos > height){
      yPos = height;
      ySpeed = -ySpeed;
    }
    if(yPos < 0){
      yPos = 0;
      ySpeed = -ySpeed;
    }
  }
}
