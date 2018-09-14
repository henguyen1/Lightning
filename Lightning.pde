void setup()
{
  size(800,800);
  background(0,255,229);
  strokeWeight(5);
}

int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;
void draw()
{
	while (endX < 801)
	{
		endX = startX + ((int)(Math.random()*9));
		endY = startY + (((int)(Math.random()*18)-9));
		line(startX,startY,endX,endY);

	}		
}	
void mousePressed()
{

}

