PImage sun,person1,person2,person3,person4,coin;
float ypos=0;
float ypos2=4;
int score=0;
int lives=5;

void setup()
   {
     size(1000,585);
     person1 = loadImage("person1.png");
     sun = loadImage("sun.png");
     coin = loadImage("coin.png");
     person2 = loadImage("person2.png");
     person3 = loadImage("person3.png");
     person4 = loadImage("person4.png");
   }
void draw()
{
  background(170,200,255);
  image(sun,720,-30,160,160);
  fill(255,240,50);
  ellipse(800,50,85,85);
  fill(200,255,150);
  rect(0,200,1000,400);
  fill(0,0,0);
  rect((-frameCount%200)*10+1000,130,90,70);
  rect((-frameCount%200)*10+1090,100,50,100);
  rect((-frameCount%200)*10+1500,130,90,70);
  rect((-frameCount%200)*10+1900,100,50,100);
  fill(200,200,200);
  rect(0,250,1000,90);
  fill(200,200,200);
  rect(0,350,1000,90);
  fill(200,200,200);
  rect(0,450,1000,90);
  fill(255,100,100);
  
  //people
  image(person4,(-frameCount%300)*10+2500,250+sin(ypos)*100,120,120);
  ypos +=0.01;
  image(person3,(-frameCount%450)*5+2000,400+sin(ypos)*140,120,120);
  ypos +=0.01;
  image(person1,(-frameCount%300)*5+1000,300+sin(ypos)*50,120,120);
  ypos +=0.01;
  image(person2,(-frameCount%400)*5+1600,250-sin(ypos)*100,120,120);
  ypos +=0.08;
  
  float sx=0;
  float sy=0;
  float sw=200;
  float sh=80;
  float cx=(-frameCount%300)*20+1900;
  float cy=300+sin(ypos2)*130;
  //car moved by mouse on x-axis
  rect(sx,sy+mouseY,sw,sh);
  fill(0);
  ellipse(50,mouseY+60,60,60);
  fill(0);
  ellipse(150,mouseY+60,60,60);
  fill(100);
  ellipse(50,mouseY+60,40,40);
  fill(100);
  ellipse(150,mouseY+60,40,40);
  fill(255,100,100);
  arc(100,mouseY+0,160,150,PI,TWO_PI);
  fill(160,210,300);
  arc(100,mouseY+0,130,130,PI,TWO_PI);
  fill(255,100,100);
  rect(95,mouseY+0,10,-75);
  fill(0);
  rect(99,mouseY+0,2,80);
  
  
  //coin
  fill(0);
  image(coin,cx,cy,50,50);
  ypos2 +=0.05;
  
  
  //if rect() part of car hits coin, score++
  if(cy<=sx&&cx<=sy)
  {
   score++;
  }
  textSize(25);
  fill(0);
  text("Score:"+score,0,25);
  textSize(25);
  fill(0);
  text("Lives:"+lives,150,25);
  
  
  
}