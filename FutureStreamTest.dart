import 'dart:ffi';

void main() async {
   countPrintNum(5).listen((val) {
    print(val);

   });

}

Stream<int> countPrintNum(int max) async* {

  for(int i=1;i<=max;i++) {
    yield i;
    await Future.delayed(Duration(seconds: 1));

  }
     
}