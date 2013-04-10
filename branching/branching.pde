Branch branch;

void setup()
{
  size(800, 600);
  branch = new Branch( width/2, height/2, 300 );
  branch.growthAngle = -PI/2;
}

void draw()
{
  background( 255 );
  // draw first branch
  branch.draw();
  branch.growthAngle = map( mouseX, 0, width, 0, TWO_PI );
}

void mousePressed()
{
  branch = new Branch( width/2, height/2, 300 );
}

class Branch
{
  float startX, startY;
  float length;
  float currentLength;
  float growthAngle;
  Branch child;
  Branch( float sx, float sy, float length )
  {
    startX = sx;
    startY = sy;
    this.length = length;
    currentLength = 0;

    if( random(1.0) < 0.5 )
    {
      growthAngle = -PI * 0.2;      
    }
    else
    {
      growthAngle = PI * 0.2;
    }
    
    
    if( length > 10 )
    {
      
      child = new Branch( length / 3, 0, length * 0.66  );
    }
  }
  
  void draw()
  {
    currentLength += (length - currentLength) * 0.05;
    translate( startX, startY );
    rotate( growthAngle );
    line( 0, 0, currentLength, 0 );
    if( child != null )
    {
      child.draw();
    }
  }
}

