Particle [] p;

int num = 30;
float maxD = 150;

void setup(){
  size(800,800);
  p = new Particle [num];
  
  for (int i = 0; i < num; i++){
    p[i] = new Particle();  
  }
}


void draw(){
  background(0);
  
  for ( int i = 0; i < num; i++){
    p[i].update();
  
  }
  
  stroke(255);
  
  for ( int i = 0; i < num; i++){
    
    for (int j = 0; j < num; j++){
        if(dist(p[i].xPos, p[i].yPos, p[j].xPos, p[j].yPos )< maxD ){
          line(p[i].xPos, p[i].yPos, p[j].xPos, p[j].yPos);
        }
    }
  
  }
  

 
}