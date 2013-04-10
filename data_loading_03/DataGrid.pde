class DataGrid
{
  ArrayList<String>  values;
  int                rows;
  int                columns;
  DataGrid( String filename )
  {
    values = new ArrayList<String>();
    String[] lines = loadStrings( filename );
    rows = lines.length;
    for( String line : lines )
    {
      String[] elements = split( line, ',' );
      columns = max( columns, elements.length );
      for( String e : elements )
      {
        values.add( e );
      }
    }
  }
  
  String getValueString(int x, int y)
  {
     if( x < columns && y < rows )
     {
       return values.get( y * columns + x );
     } 
     return "";
  }
  
  float getValue( int x, int y )
  {
    return float( getValueString( x, y ) );
  }
};
