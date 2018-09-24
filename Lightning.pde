
void setup()
{
  size(800,800);
  background(0,150,150);
  strokeWeight(4);

}

int startX = 400;
int startY = 0;
int endX = 400;
int endY = 0;
int x;

void draw()
{	
	building();
	stroke(255,177,5);
	x = ((int)(Math.random()*18));
	if (endX > 400)
	{
		endX = startX - x;
	}

	else if (endX <= 400)
	{
		endX = startX + x;
	}
	endY = startY + ((int)(Math.random()*8));
	line(startX,startY,endX,endY);

	startX = endX;
	startY = endY;

	if (endY > 340)
	{
		endX = 400;
		endY = 350;
		line(startX,startY,endX,endY);
		noLoop();
		
	}
			
}	

void building()
{	
	stroke(0);
	strokeWeight(2);
	line(400,500,400,350);
	triangle(395, 500, 400, 400, 405, 500);
	beginShape();
	vertex(370,800);
	vertex(395,500);
	vertex(405,500);
	vertex(425,800);
	endShape(CLOSE);
	
}


