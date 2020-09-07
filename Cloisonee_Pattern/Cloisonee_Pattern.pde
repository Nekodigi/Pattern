float r = 100;
int ni, nj;

void setup(){
  size(500, 500, P3D);//use P3D to getting rid of seam
  background(255);//strokeWeight(10);
  //noStroke();
  fill(100, 50, 255);
  ni = int(width/r/2+1);
  nj = int(height/r/2+1);
  for(int i=0; i<ni; i++){
    for(int j=0; j<nj; j++){
      drawUnit(i*r*2+r, j*r*2+r, r);
    }
  }
}

void draw(){
  
}

void drawUnit(float x, float y, float r){//if you mind line, please add EPSILON to arc angle
  arc(x, y, r*2, r*2, 0, HALF_PI, OPEN);//1
  arc(x+r, y+r, r*2, r*2, PI, HALF_PI*3, OPEN);
  arc(x, y, r*2, r*2, HALF_PI, PI, OPEN);//2
  arc(x-r, y+r, r*2, r*2, HALF_PI*3, TWO_PI, OPEN);
  arc(x, y, r*2, r*2, PI, HALF_PI*3, OPEN);//3
  arc(x-r, y-r, r*2, r*2, 0, HALF_PI, OPEN);
  arc(x, y, r*2, r*2, HALF_PI*3, TWO_PI, OPEN);//3
  arc(x+r, y-r, r*2, r*2, HALF_PI, PI, OPEN);
}
