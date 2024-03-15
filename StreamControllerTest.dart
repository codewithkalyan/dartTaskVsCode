import 'dart:async';

void main() {
countDown();

}

void countDown() {
  final controller= StreamController<int>();

  controller.sink.add(1);

  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);
  controller.sink.add(5);
  controller.sink.close();

  

  controller.stream.listen((val) { 
    print(val);
  }, onError: (err) {
    print(err);
  
  });

  controller.close();
}