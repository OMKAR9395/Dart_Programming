void greet(String name, [String title = "Hey"]) 
{
  print("Hello $title $name");
}
void main() 
{
  greet("Omkar");           
  greet("Mohite", "Patil");   
}
