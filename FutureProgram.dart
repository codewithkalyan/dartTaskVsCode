


void main()  {

 

  print('hello');
  print('kalyan');
 delaySeconds2().then((val) {
      print(val);
      });

  print('world');

}

  Future<String> delaySeconds2()  {

    return Future.delayed(Duration(seconds: 3),() {
     return 'hi!!!!!';

    }
    
    );
  }




