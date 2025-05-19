void main(){           
    List numberlist =['Om','Raj','Rahul'];

    numberlist.add('Sakshi');
    numberlist.addAll(['Sahil','Sayali']);
    numberlist.addAll(['Sahil','Sayali','Sansu']);

    numberlist.remove('Raj');
    numberlist.removeAt(1);

    print(numberlist.isEmpty);      
    print(numberlist.isNotEmpty);  

    numberlist.removeLast();
    numberlist.clear();
    numberlist.addAll(['Samu','Shravu','Diksha','sahil']);

    print(numberlist.length);
    print(numberlist.firstOrNull); 
    print(numberlist.lastOrNull);  
    print(numberlist.indexOf('Diksha'));    

    numberlist = numberlist.toSet().toList();

    for( int i = 0; i < numberlist.length;i++)
    print(numberlist[i]);
    
}