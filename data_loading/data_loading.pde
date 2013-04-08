int columns = 24;
int rows = 16;
float column_width;
float row_height;
float padding = 6;
color background_color = color( 255 );
DataGrid data;

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
  background( background_color );
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
}

// draw something in cell x, y
// dimensions of cell are stored in w and h
// all drawing starts relative to the cell's top-left corner
void renderCell( int x_index, int y_index, float w, float h )
{
  // convert data from its range (0, 1) to new range (0.1, 1.0)
  float size = map( data.getValue( x_index, y_index ), 0.0, 1.0, 0.1, 1.0 );
  float diameter = w * size;
  ellipse( w/2, h/2, diameter, diameter );
}

