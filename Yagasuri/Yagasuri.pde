float x1 = 30;//
float x2 = 6;//
float h = 100;//
float y1 = 30;//
color col1, col2;

void setup(){
  size(500, 500);
  col1 = color(255);
  col2 = color(100, 50, 255);
  noStroke();
  float xd = x1*2+x2;
  int ni = int(width/xd)+2;
  int nj = int(height/h)+1;
  for(int i=0; i < ni; i++){
    for(int j=0; j < nj; j++){
      drawUnit(i*xd, j*h, (i+j)%2 == 0);
    }
  }
}

void draw(){
  
}

void drawUnit(float x, float y, boolean invC){//invert color
  pushMatrix();
  translate(x, y);
  
  if(invC)fill(col2);else fill(col1);//draw left wing
  beginShape();
  vertex(-x2/2, h/2);
  vertex(-x2/2, -h/2);
  vertex(-x2/2-x1, -h/2-y1);
  vertex(-x2/2-x1, h/2-y1);
  endShape();
  
  if(invC)fill(col1);else fill(col2);//draw core
  rectMode(CENTER);
  rect(0, 0, x2, h);
  
  if(invC)fill(col2);else fill(col1);//draw right wing
  beginShape();
  vertex(x2/2, h/2);
  vertex(x2/2, -h/2);
  vertex(x2/2+x1, -h/2-y1);
  vertex(x2/2+x1, h/2-y1);
  endShape();
  
  popMatrix();
}
