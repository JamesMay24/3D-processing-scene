import queasycam.*;
import ddf.minim.*;

Minim minim;
AudioPlayer player;
PShape Imposter;
PShape spongbob;
PShape Shrek;
PShape hand;
PShape rabbit;
PShape cat;
PShape leg;
PImage AmongUs;
PImage shreg;
PImage spung;
PImage Bg;
float One;
float epic;

QueasyCam cam;

void setup() {
  size(800, 800, P3D);
  minim = new Minim(this);
  cam = new QueasyCam(this);
  perspective(PI/3, (float)width/height, 0.01, 10000);
  hand = loadShape("hand/hand.obj");
  cat = loadShape("cat/cat.obj");
  Bg = loadImage("background.png");
  rabbit = loadShape("rabit/rabbit.obj");
  AmongUs = loadImage("BeastOfDarkness.png");
  leg = loadShape("pink/pink.obj");
  spongbob = loadShape("spungbob/spong.obj");
  Imposter = loadShape("imposter/imposter.obj");
  spung = loadImage("TheIconOfWrath.png");
  Shrek = loadShape("shrek/shrek.obj");
  shreg = loadImage("OhNo.png");
  colorMode(RGB);
  player = minim.loadFile("song.mp3");
}

void draw() {
  background(0);

  player.play();
  epic= epic + 0.1;
  pushMatrix();
  translate(1, 140, 80);
  rotateX(PI/2);
  rotate(epic);
  directionalLight(251, 402, 11126, 1, 0, 0);
  shape(Imposter, 0, 0);
  popMatrix();

  pushMatrix();
  translate(100, 80, -230);
  rotateX(PI/2);
  rotate(epic);
  directionalLight(251, 402, 11126, 100, 80, -230);
  shape(spongbob, 0, 0);
  popMatrix();
  pushMatrix();
  translate(-170, 90, -200);
  rotateX(PI/2);
  rotate(epic);
  //directionalLight(251, 402, 1126, -170, 90, -200);
  shape(Shrek, 0, 0);
  popMatrix();
  pushMatrix();
  translate(1, 200, 0);
  rotateX(PI/2);
  rotateZ(PI/1);

  //directionalLight(251, 402, 1126, 0, 0, 0);
  shape(hand, 0, 0, 600, 600);
  popMatrix();
  pushMatrix();
  translate(-1100, -600, -600);
  directionalLight(251, 402, 1126, -1100, -600, -600);
  image(Bg, 0, 0);
  popMatrix();
  pushMatrix();
  translate(260, 90, -190);
  directionalLight(251, 402, 1126, 260, 90, -190);
  rotateX(PI/2);
  rotate(epic);
  shape(rabbit, 0, 0);
  popMatrix();

  pushMatrix();
  translate(-284, 90, -60);
  rotateX(PI/2);
  rotate(epic);
  directionalLight(251, 402, 1126, -284, 90, -60);
  shape(leg, 0, 0);
  popMatrix();
  pushMatrix();
  translate(-40, 80, -220);
  rotateX(PI/2);
  rotate(epic);
  directionalLight(251, 402, 1126, -40, 80, -220);
  shape(cat, 0, 0);
  popMatrix();
}
