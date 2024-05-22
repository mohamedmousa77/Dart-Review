

// Cascade consecutive method invocations on the same reference.
// Documentation page: https://dart.dev/tools/linter-rules/cascade_invocations
// Cascade ('..'). Invocation ('...')
class User{
   String nam= '';
   int age = 0;
   String changeName () => nam = 'ahemd';
}
//  Without CasCade
void main(){
  User user = User();
  user.nam = 'mousa';
  user.age = 10;
}
//  Using CasCade
void mainWithCasCade(){
  User user = User()
  ..nam = 'mousa'
  ..age = 10
  .. changeName();
}
