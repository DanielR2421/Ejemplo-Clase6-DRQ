//EJERCICIO1

int x = 50;
int y = 50;

float level;
float rad;


void setup(){
 size(800, 800);
 background(0);
 //noStroke();
}


void draw(){
  //variable provisional
 level = random(0, 1);
 rad = (level* width/2); 
 
 float r = random(20, 219);
 float g = random(18, 31);
 float b = random(43, 79);
 
 fill(255, 10);
 stroke(r, g, b);
 ellipse(x, y, rad, rad);
 
   
   x++;
 
 if(x > width){
  x = 0;
  y += 80;
 
 } 
 
 if(y > height){
   y= 0;
   //Ejercicio en clase 
    background(0);
  }
 }
 
 //else {
// noLoop();
//}
//delay(100);
//}
