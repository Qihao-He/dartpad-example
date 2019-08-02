import 'dart:async';

void main(){
  final bloc = new Bloc();
  
//   bloc.emailController.stream.listen((value) {
//     print(value);
//   });
  
  bloc.emailStream.listen((value) {
    print(value);
  });
  
//   bloc.emailController.sink.add('MY NEW EMAIL');
  bloc.changeEmail('My NEW EMAIL');
}

class Bloc {
  final _emailController = StreamController<String>();
  final _passwordController = StreamController<String>();
  
  // Add data to stream
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;
  
  // Retrieve data from stream
  Stream<String> get emailStream => _emailController.stream;
  Stream<String> get passwordStream => _passwordController.stream;
}
