Die Dice;
int dieSum = 0;
void setup()
{
  textAlign(CENTER);
  noLoop();
  size(600,700);
}

void draw()
{
  rectMode(CENTER);
  background(192);
  for (int i = 0; i < 12; i++)
  {
    for (int j = 0; j < 12; j++)
    {
      Dice = new Die(j*50+25, i*50+25);
      Dice.roll();
      Dice.show();
    }
  }
  rectMode(CORNER);
  fill(255,255,0);
  strokeWeight(1);
  rect (375,600, 5, 100,12);
  strokeWeight(4);
  if (dieSum >= 540)
    fill(255, 255, 0);
  else
    fill(255);
  rect(0,600,(dieSum/864.0) * 600,100,12);
  fill(0);
  text("Sum of Dice:" + dieSum,((dieSum/864.0) * 600)/2, 650);
  text("Average:" + dieSum/144.0, ((dieSum/864.0) * 600)/2, 670);
}

void mousePressed()
{
  redraw();
  dieSum = 0;
}
    





class Die{
  int dieX, dieY, DieNum;
  Die(int x, int y)
  {
    dieX = x;
    dieY = y;
  }
  
  void roll()
  {
    DieNum = (int)(Math.random() * 6)+1;
    dieSum = dieSum + DieNum;
  }
  
  void show()
  {
    strokeWeight(4);
    fill(255);
    rect(dieX, dieY, 50, 50,12);
    
    switch(DieNum)
    {
      case 1:
        ellipse(dieX,dieY,5,5);
        break;
      case 2:
        ellipse(dieX - 10, dieY - 10, 5, 5);
        ellipse(dieX + 10, dieY + 10, 5, 5);
        break;
      case 3:
        ellipse(dieX - 10, dieY - 10, 5, 5);
        ellipse(dieX + 10, dieY + 10, 5, 5);
        ellipse(dieX, dieY, 5, 5);
        break;
      case 4:
        ellipse(dieX - 10, dieY - 10, 5, 5);
        ellipse(dieX + 10, dieY - 10, 5, 5);
        ellipse(dieX - 10, dieY + 10, 5, 5);
        ellipse(dieX + 10, dieY + 10, 5, 5);
        break;
      case 5:
        ellipse(dieX - 10, dieY - 10, 5, 5);
        ellipse(dieX + 10, dieY - 10, 5, 5);
        ellipse(dieX - 10, dieY + 10, 5, 5);
        ellipse(dieX + 10, dieY + 10, 5, 5);
        ellipse(dieX, dieY, 5, 5);
        break;
      case 6:
        ellipse(dieX - 10, dieY - 10, 5, 5);
        ellipse(dieX + 10, dieY - 10, 5, 5);
        ellipse(dieX - 10, dieY + 10, 5, 5);
        ellipse(dieX + 10, dieY + 10, 5, 5);
        ellipse(dieX - 10, dieY, 5, 5);
        ellipse(dieX + 10, dieY, 5, 5);
        break;
    }
  }
}
