void main() {
String name ="hello world";

String temp="";
for(int i=name.length-1;i>=0;i--){
  temp=temp+name[i];
}

print(temp);
}