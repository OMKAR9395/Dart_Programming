void greet({String? name, String? title}) 
{
  print("Hello ${title ?? "Omkar"} ${name ?? "Mohite"}");
}
void main() 
{
  greet();                        
  greet(name: "Patil");  
  greet(name: "Harry", title: "Potter");
}
