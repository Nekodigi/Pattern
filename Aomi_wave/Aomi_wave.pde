float r = 50;
int ni, nj;

void setup(){
  size(500, 500);
  ni = int(width/(r*sqrt(3)))+2;
  nj = int(height/(r/2))+2;
  stroke(100, 50, 255);
  strokeWeight(6);
  fill(255);
  //noFill();
  for(int j=0; j<nj; j++){
    for(int i=0; i<ni; i++){
      float off = 0;
      if(j%2==1)off = r*sqrt(3)/2;
      drawUnit(new PVector(i*r*sqrt(3)+off, j*r/2), r);
    }
  }
}

void draw(){
  
}

void drawUnit(PVector origin, float r){
  ellipse(origin.x, origin.y, r*2, r*2);
  ellipse(origin.x, origin.y, r*1.55, r*1.55);
  ellipse(origin.x, origin.y, r*1.1, r*1.1);
  ellipse(origin.x, origin.y, r*0.65, r*0.65);
}
