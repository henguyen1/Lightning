void setup()
{
  size(800,800);
  background(0,255,229);
  strokeWeight(5);
}

int startX = 400;
int startY = 0;
int endX = 400;
int endY = 0;

void draw()
{	
	building();
	stroke(255,177,5);
	endX = startX + ((int)(Math.random()*18)-9);
	endY = startY + ((int)(Math.random()*9));
	line(startX,startY,endX,endY);
	startX = endX;
	startY = endY;
	if (endY > 330)
	{
		endX = 400;
		endY = 350;
		line(startX,startY,endX,endY);
		noLoop();
		moreLightning();
	}
			
}	

void building()
{	
	stroke(0);
	line(400,500,400,350);
	ellipse(400,500,200,200);
	rect(250,500,300,300);
}
void moreLightning()
{
	stroke(255,177,5);
	endX = startX + ((int)(Math.random()*18)-9);
	endY = startY + ((int)(Math.random()*9));
	line(startX,startY,endX,endY);
	startX = endX;
	startY = endY;
}