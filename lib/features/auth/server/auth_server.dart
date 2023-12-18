import 'package:flutter_app/constants/global_variables.dart';
import 'package:flutter_app/models/user.dart';
import 'package:http/http.dart' as http;

class AuthServer {
  void signUpUser(
      {required String email,
      required String password,
      required String name}) async {
    User user = User(
        id: '',
        name: name,
        email: email,
        password: password,
        address: 'address',
        type: 'type',
        token: 'token');
    await http.post(baseUrl('/signup'), body: user.toJson());
  }
}
