float r = 50;
int ni, nj;

void setup(){
  size(500, 500);
  ni = int(width/(r*sqrt(3)/2))+2;
  nj = int(height/(r/2*3))+1;
  stroke(255);
  strokeWeight(2);
  fill(100, 50, 255);
  for(int i=0; i<ni; i++){
    for(int j=0; j<nj; j++){
      int sign = 1;
      float off = r/4;
      if(i%2==1 )sign = -sign;
      if(j%2==1 )sign = -sign;
      drawUnit(new PVector(i*r*sqrt(3)/2, j*r/2*3+r/4*3+off*sign), r, sign);
    }
  }
}

void draw(){
  
}

void drawUnit(PVector origin, float r, int sign){
  PVector A = new PVector(origin.x, origin.y-r*sign);
  PVector B = new PVector(origin.x-r/2*sqrt(3)*sign, origin.y+r/2*sign);
  PVector C = new PVector(origin.x+r/2*sqrt(3)*sign, origin.y+r/2*sign);
  triangle(origin.x, origin.y, A.x, A.y, B.x, B.y);
  triangle(origin.x, origin.y, B.x, B.y, C.x, C.y);
  triangle(origin.x, origin.y, C.x, C.y, A.x, A.y);
}
