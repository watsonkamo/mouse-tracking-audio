import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;

Minim minim;
AudioOutput out;
Oscil oscil;

void setup(){
  size(512,200);
  minim = new Minim(this);
  out = minim.getLineOut();
  oscil = new Oscil(440,1.0, Waves.TRIANGLE);
  oscil.patch(out);
}

void draw(){
  background(0);
  stroke(255);
  for(int i = 0; i < out.bufferSize() - 1; i++)
  {
    line(i, 50+out.left.get(i) * 50, i+1, 50+out.left.get(i+1)*50);
    line(i, 150+out.right.get(i) * 50, i+1, 150 + out.right.get(i+1) * 50);
  }
}

    
  
