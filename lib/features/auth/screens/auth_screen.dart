import 'package:flutter/material.dart';
import 'package:flutter_app/common/widgets/custom_button.dart';
import 'package:flutter_app/common/widgets/custom_textfield.dart';
import 'package:flutter_app/constants/global_variables.dart';

enum Auth {
  signUp,
  signIn,
}

class AuthScreen extends StatefulWidget {
  static const String routerName = 'auth-screen';

  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  var _auth = Auth.signUp;
  final _signUpFormKey = GlobalKey<FormState>();
  final _signInFormKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passWordController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _userNameController.dispose();
    _passWordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalVariables.greyBackgroundColor,
      body: SafeArea(
          child: Column(
        children: [
          const Text(
            'Welcome',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
          ),
          ListTile(
            leading: Radio(
                value: Auth.signIn,
                groupValue: _auth,
                onChanged: (Auth? val) {
                  setState(() {
                    _auth = val!;
                  });
                }),
            title: const Text('Create Account',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                )),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: GlobalVariables.background,
            child: Form(
                key: _signUpFormKey,
                child: Column(
                  children: [
                    CustomTextField(
                      controller: _userNameController,
                      hintText: 'Name',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    if (_auth == Auth.signIn)
                      CustomTextField(
                        controller: _emailController,
                        hintText: 'Email',
                      ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                      controller: _passWordController,
                      hintText: 'Password',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomButton(
                      text: 'signUp',
                      onTap: () {},
                    )
                  ],
                )),
          ),
          ListTile(
            leading: Radio(
                value: Auth.signUp,
                groupValue: _auth,
                onChanged: (Auth? val) {
                  setState(() {
                    _auth = val!;
                  });
                }),
            title: const Text('sign-In',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                )),
          ),
        ],
      )),
    );
  }
}
