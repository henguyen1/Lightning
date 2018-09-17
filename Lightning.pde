void setup()
{
  size(800,800);
  background(0,255,229);
  strokeWeight(5);
}

int startX = 0;
int startY = 400;
int endX = 0;
int endY = 400;
void draw()
{
	endX = startX + ((int)(Math.random()*9));
	endY = startY + (((int)(Math.random()*18)-9));
	line(startX,startY,endX,endY);
	startX = endX;
	startY = endY;
			
}	
void mousePressed()
{
	redraw();
}

