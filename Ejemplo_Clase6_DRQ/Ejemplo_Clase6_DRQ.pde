//Codigo Base para la entrega5

import ddf.minim.*;
import ddf.minim.analysis.*;

Minim minim;
AudioPlayer player;
FFT fft;

int x = 50;
int y = 50;

float level;
float rad;


void setup(){
 size(800, 800);
 background(0);
frameRate(800);

 minim = new Minim(this);
 player = minim.loadFile("Avicii - Our Love v4.mp3");
 player.play();
 
 fft = new FFT(player.bufferSize(), player.sampleRate());
 
}


void draw(){
 fft.forward(player.mix);
 //Retornando la amplitud de la 10ma frecuencia despues de ser transformada por la FFT
 level = fft.getBand(10);  

 rad = (level* width/20); 
 
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
