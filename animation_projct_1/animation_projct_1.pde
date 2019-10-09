//animations project

//variables

int a;
int b;
int c;
int d;
//fence
int x;
int x1;
int x2;
int x3;
int x4;
int x5;
int x6;
int x7;
//small hills
int y1;
int y2;
int y3;
int y4;
int y5;
int y6;
//noface
int noface;

void setup() {
  size(800,600);
  noStroke();
  a=-200;
  b=200;
  c=600;
  d=400;
  
 //fence
  x= -300;
  x1= -150;
  x2= 0;
  x3= 150;
  x4= 300;
  x5= 450;
  x6=600;
  x7=750;
  
  //small hills
  y1=-200;
  y2=0;
  y3=200;
  y4=400;
  y5=600;
  y6=800;
  
  //noface
  noface=0;
}

void draw() { 
  background(60,72,118);
  
   //cloud
  fill(184,183,224);
  ellipse(d,150,100,100);
  ellipse(d,200,100,100);
  ellipse(d-50,200,100,100);
  ellipse(d+50,200,100,100);
  
  //big hills
  fill(32,100,40);
  ellipse(a,400,400,400);
  ellipse(b,400,400,400);
  ellipse(c,400,400,400);
  
  //small hills
  fill(17,72,23);
  ellipse(y1,400,200,200);
  ellipse(y2,400,200,200);
  ellipse(y3,400,200,200);
  ellipse(y4,400,200,200);
  ellipse(y5,400,200,200);
  ellipse(y6,400,200,200);
  
  //ground
  fill(131,33,29);
  rect(0,400,800,200);
  
  //fence
  fill(131,33,29);
  //top bar
  rect(0,240,800,25);
  //middle bars
  rect(x,240,25,400);
  rect(x1,240,25,400);
  rect(x2,240,25,400);
  rect(x3,240,25,400);
  rect(x4,240,25,400);
  rect(x5,240,25,400);
  rect(x6,240,25,400);
  rect(x7,240,25,400);
  
  pushMatrix();
 translate(noface-800,20);
  noface();
  popMatrix();
  
  noface=noface+4;
  
  //movement of fence
  x=x+4;
  x1=x1+4;
  x2=x2+4;
  x3=x3+4;
  x4=x4+4;
  x5=x5+4;
  x6=x6+4;
  x7=x7+4;
  
 //movement of big hills
  a=a+2;
  b=b+2;
  c=c+2;
  
  //movement of small hill
  y1=y1+3;
  y2=y2+3;
  y3=y3+3;
  y4=y4+3;
  y5=y5+3;
  y6=y6+3;
    
  //movement of cloud
  d=d+1;
  
    //variables of big hills
    if (a>=1000) {
      a=-200;
    }
    if (b>=1000) {
      b=-200;
    }
    if (c>=1000) {
      c=-200;
    }
    
    //variable of small hills
    
    if (y1>=1000) {
      y1=-200;
    }
    if (y2>=1000) {
      y2=-200;
    }
    if (y3>=1000) {
      y3=-200;
    }
    if (y4>=1000) {
      y4=-200;
    }
    if (y5>=1000) {
      y5=-200;
    }
    if (y6>=1000) {
      y6=-200;
    }
  
  //cloud variable
  if (d>=1000) {
    d=-200;
  }
  
  //fence variable
  if (x1>=1000) {
    x1=-200;
  }
  if (x2>=1000) {
    x2=-200;
  }
  if (x3>=1000) {
    x3=-200;
  }
  if (x4>=1000) {
    x4=-200;
  }
  if (x5>=1000) {
    x5=-200;
  }
  if (x6>=1000) {
    x6=-200;
  }
  if (x7>=1000) {
    x7=-200;
  }
  if (x>=1000) {
    x=-200;
  }
  if(noface>=1200) {
    noface=-200;
  }
  
}

// ==================================
void noface()  {
noStroke();
//face shape
fill(190);
ellipse(600,380,150,185);
//triangles
fill(84,69,106);
triangle(550,365,580,365,565,325);
triangle(620,365,650,365,635,325);
triangle(550,395,580,395,565,435);
triangle(620,395,650,395,635,435);
//eyes
fill(0);
ellipse(565,375,25,10);
ellipse(635,375,25,10);
rect(555,385,20,5);
rect(625,385,20,5);
//mouth
fill(0);
ellipse(600,438,25,10);
fill(84,69,106);
ellipse(600,450,20,5);
  
  
}
