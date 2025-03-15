class Building{
  static int number = 0;
  int res = 20,ret = 30;
  Building(){
    print('We  Are Inside Of Constructor...');
  }
  Add(){
    number = res + ret;
  }

}
 Building obj = new Building();
void main(){


  obj.Add();
  Building();
  
  new Building().Add();
  
  print(Building().runtimeType);
  print(obj.runtimeType);

  print(Building.number);
}