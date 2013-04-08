// Region Drawing

int columns = 24;
int rows = 16;
float column_width;
float row_height;
float padding = 6;
color background_color = color( 255 );

void setup()
{
  size( 1024, 768 );
  // calculate size of cells from screen size and number of rows and columns
  column_width = (width - padding*2) / columns;
  row_height = (height - padding*2) / rows;
  smooth();
}

void draw()
{
  background( background_color );
  // loop through all cell locations and call drawCell after translating our view
  // to that position
  for ( int x = 0; x < columns; ++x )
  {
    for ( int y = 0; y < rows; ++y )
    {
      // save origin
      pushMatrix();
      float x_coord = padding + x * column_width;
      float y_coord = padding + y * row_height;
      // move origin to cell location
      translate( x_coord, y_coord );
      // draw cell
      renderCell( x, y, column_width, row_height );
      // restore origin
      popMatrix();
    }
  }
}

// draw something in cell x, y
// dimensions of cell are stored in w and h
// all drawing starts relative to the cell's top-left corner
void renderCell( int x_index, int y_index, float w, float h )
{
  // draw an ellipse in the center of the cell (w/2, h/2)
  ellipse( w/2, h/2, 4, 4 );
}

