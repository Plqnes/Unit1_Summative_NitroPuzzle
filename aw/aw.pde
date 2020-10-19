PImage Nitro;
PImage NitroIM;
PImage bgImg;
int Scene = 1;
Piece One = new Piece (0, (int)random(800), 100);
Piece Two = new Piece (2, (int)random(800), 250);
Piece Three = new Piece (3, (int)random(800), 400);
Piece Four = new Piece(4, (int)random(800), 550);
static final int FADE = 2750;
import ddf.minim.*;
Minim minim;
AudioPlayer clarity;

void setup()
{
  minim = new Minim(this);
  clarity = minim.loadFile("clarity.mp3");
  clarity.play();
  size(800, 800);
  Nitro = loadImage("Nitro.jpg");
  NitroIM = loadImage("NitroIM.jpg");
  imageMode(CENTER);
  Nitro.resize(300, 150);
  NitroIM.resize(300, 150);
  bgImg = loadImage("You win.png");
  bgImg.resize(800, 800);
}

void draw()

{
  if (key == 'o') {
    clarity.shiftGain(clarity.getGain(), 35, FADE);
  }
  if (key =='p') {
    clarity.shiftGain(clarity.getGain(), -35, FADE);
  }
  if (key =='z') {
    clarity.pause();
  }
  if (key =='x') {
    clarity.play();
  }  
  if (Scene == 5)
  {
    background(bgImg);
  }

  if (Scene == 1)
  {


    background(0);
    One.draw();
    Two.draw();
    Three.draw();
    Four.draw();
  }
}

void mouseClicked()
{
  float d = dist(mouseX, mouseY, Four.x, Four.y);
  Scene = 5;
}
