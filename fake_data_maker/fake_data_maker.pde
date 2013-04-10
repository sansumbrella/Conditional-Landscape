// Random data generator

int rows = 80;
int columns = 80;

String[] lines = new String[rows];

for ( int row = 0; row < rows; ++row )
{
  String output = "";
  for ( int column = 0; column < columns; ++column )
  {
    output += random(0.0, 1.0) + ",";
  }
  // cut off the final comma
  lines[row] = output.substring( 0, output.length() - 1);
}

saveStrings( "../shared_data/fake_data.csv", lines );
exit();


