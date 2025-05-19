void main(){            //Assignment of List Functions
    int  number =10;
    List numberlist =['Om','Raj','Rahul'];
    numberlist.add('Sakshi');
    numberlist.addAll(['Sahil','Sayali']);
    numberlist.addAll(['Sahil','Sayali','Sansu']);
    numberlist.remove('Raj');
    numberlist.removeAt(1);
    print(numberlist.isEmpty);      //false
    print(numberlist.isNotEmpty);   //true
    numberlist.removeLast();
    numberlist.clear();
    numberlist.addAll(['Samu','Shravu','Diksha','sahil']);
    print(numberlist.length);
    print(numberlist.firstOrNull); ///Sumu  first element print
    print(numberlist.lastOrNull);   ///Sahil last element print 
    print(numberlist.indexOf('Diksha'));    //2

    numberlist = numberlist.toSet().toList();

    for( int i = 0; i < numberlist.length;i++)
    print(numberlist[i]);
    
}