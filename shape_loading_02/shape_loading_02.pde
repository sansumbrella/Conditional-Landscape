// Shape loading
// Note when saving the SVG that you must disable "preserve Illustrator editing"

// Name for the shape we will load
PShape icon;

void setup()
{
  size( 640, 480 );
  smooth();
  // Load the shape from SVG
  icon = loadShape("../../shared_data/Landscape Shape.svg");
}

void draw()
{
  background( 255 );
  // center our drawing on the screen
  translate( (width - icon.getWidth())/2, (height - icon.getHeight())/2 );
  // draw our shape
  shape( icon, 0, 0 );
}

