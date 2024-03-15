void main() {
final list =[1,2,3,4,5,6,7,8,9];
final[a,b,c,...d]=list;

print('$a $b $c $d');


final jsoned = {
  "userId" : 1,
  "id" : 111,
  "title" :" welcome to Dart",
  "body" :"Flutter is used to create apps for android and ios"

};

final { 'userId' : userId,'id':id,'title':title,'body':body} =jsoned ;

print(userId);
print(id);
print(title);
print(body);

}