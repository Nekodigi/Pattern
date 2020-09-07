float r = 100;
int ni, nj;

void setup() {
  size(500, 500, P3D);//use P3D to getting rid of seam
  background(255);//strokeWeight(10);
  //noStroke();
  float ystep = r*sqrt(3)/2;//y step length
  fill(100, 50, 255);
  ni = int(width/r+1);
  nj = int(height/r/sqrt(3)*2);
  for (int i=-1; i<=ni; i++) {
    for (int j=-1; j<=nj; j++) {
      if(j%2 == 0){
        drawL(i*r+r/2, j*ystep, r);
        drawR(i*r+r/2, j*ystep, r);
        drawB(i*r+r/2, j*ystep, r);
      }else{
        drawL(i*r+r, j*ystep, r);
        drawR(i*r, j*ystep, r);
        if(i != ni-1)drawB(i*r+r, j*ystep, r);
      }
    }
  }
}

void draw() {
}

void drawL(float x, float y, float r) {//if you mind line, please add EPSILON to arc angle
  arc(x-r, y, r*2, r*2, 0, PI/3, OPEN);//1
  arc(x+r/2, y+r*sqrt(3)/2, r*2, r*2, PI, PI+PI/3, OPEN);//1
}

void drawR(float x, float y, float r) {//if you mind line, please add EPSILON to arc angle
  arc(x+r, y, r*2, r*2, PI/3*2, PI/3*3, OPEN);//1
  arc(x-r/2, y+r*sqrt(3)/2, r*2, r*2, PI/3*5, TWO_PI, OPEN);//1
}

void drawB(float x, float y, float r) {//if you mind line, please add EPSILON to arc angle
  arc(x, y+r*sqrt(3), r*2, r*2, PI/3*4, PI/3*5, OPEN);//1
  arc(x, y, r*2, r*2, PI/3, PI/3*2, OPEN);//1
}
