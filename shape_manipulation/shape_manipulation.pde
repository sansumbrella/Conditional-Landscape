// Shape manipulation
PShape icon;

void setup()
{
  size( 640, 480 );
  smooth();
  icon = loadShape("../../shared_data/Landscape Shape.svg");
}

void draw()
{
  background( 255 );
  float radians = atan2( mouseY - height/2, mouseX - width/2 );
  translate( (width - icon.getWidth())/2, (height - icon.getHeight())/2 );
  rotateAndScaleAroundCenter( icon, radians, 0.66f );
  shape( icon, 0, 0 );
}

void rotateAndScaleAroundCenter( PShape shape, float radians, float scale )
{
  translate( shape.getWidth()/2, shape.getHeight()/2 );
  scale( scale );
  rotate( radians );
  translate( -shape.getWidth()/2, -shape.getHeight()/2 );
}

// get starting shape area

