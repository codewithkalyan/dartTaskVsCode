void main() {
  int page =1;
  int lastPage=1;

  final text=switch(lastPage) {
    0 => 'Click Here',
    1 when page == lastPage => 'click me',
    _ => 'None',
  };

  print(text);


  String motivation= "life is good just explore it" ;

   print(motivation.capitalFirstLetter());
}
extension CapitalFirstLetter on String {
   String capitalFirstLetter () {
    return this[0].toUpperCase()+substring(1);
   }
}