/// optional named

class product{        /// Class Declaration
  int? a;               /// Variable declaration
  String? b;             /// Variable declaration  

  product({this.a = 0, this.b=''}){          /// Constructor
    print(a);
    print(b);

  }
}

void main(){      /// Ent pt fun

  int no = 50;          /// variable initialize
  String name = 'Fork';   /// variable initialize

  product prod1 = new product(a: no,);    /// object creation

  product prod2 = new product(b:name);   /// object creation
}