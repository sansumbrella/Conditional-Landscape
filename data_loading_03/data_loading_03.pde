import processing.pdf.*;

// Load data and save PDF
// Adds Color

int columns = 24;
int rows = 16;
float column_width;
float row_height;
float padding = 6;
DataGrid data;

// set whether we want to record the screen
Boolean doRecord = false;

void setup()
{
  size( 1024, 768 );
  column_width = (width - padding*2) / columns;
  row_height = (height - padding*2) / rows;
  noFill();
  stroke( 0 );
  smooth();
  data = new DataGrid("../../shared_data/fake_data.csv");
}

void draw()
{
  if( doRecord )
  {
     beginRecord( PDF, "output/blocks.pdf" ); 
  }
  // change the way we define color in this sketch
  // use Hue, Saturation, and Brightness which range from 0.0 to 1.0
  colorMode( HSB, 1.0 );
  background( 1.0 );
  for ( int x = 0; x < columns; ++x )
  {
    for ( int y = 0; y < rows; ++y )
    {
      pushMatrix();
      float x_coord = padding + x * column_width;
      float y_coord = padding + y * row_height;
      translate( x_coord, y_coord );
      renderCell( x, y, column_width, row_height );
      popMatrix();
    }
  }
  
  if( doRecord )
  {
    endRecord();
    // stop recording drawing
    doRecord = false;
  }
}

// draw something in cell x, y
// dimensions of cell are stored in w and h
// all drawing starts relative to the cell's top-left corner
void renderCell( int x_index, int y_index, float w, float h )
{
  float value = data.getValue( x_index, y_index );
  // convert data from its range (0, 1) to new range (0.1, 1.0)
  float brightness = map( value, 0.0, 1.0, 0.2, 1.0 );
  float size = map( value, 0.0, 1.0, 0.1, 1.0 );
  float diameter = w * size;
  fill( brightness );
  ellipse( w/2, h/2, diameter, diameter );
}

void keyPressed()
{
  if( key == 's' )
  {
    doRecord = true;
  }
}

