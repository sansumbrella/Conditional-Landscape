class DataGrid
{
  ArrayList<String>  values;
  int                rows;
  int                columns;
  DataGrid( String filename )
  {
    values = new ArrayList<String>();
    
  }
  
  String getValue(int x, int y)
  {
     if( x < columns && y < rows )
     {
       return values.get( y * columns + x );
     } 
     return "";
  }
}
