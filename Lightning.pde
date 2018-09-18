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
	building();
	endX = startX + ((int)(Math.random()*9));
	endY = startY + (((int)(Math.random()*18)-9));
	line(startX,startY,endX,endY);
	startX = endX;
	startY = endY;
			
}	

void building()
{	
	line(400,500,400,350);
	ellipse(400,500,200,200);
	rect(250,500,300,300);
}
