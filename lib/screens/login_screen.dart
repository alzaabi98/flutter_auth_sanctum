import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                  controller: _emailController,
                  validator: (value) =>
                      value.isEmpty ? 'please enter valid email' : null),
              TextFormField(
                  controller: _passwordController,
                  validator: (value) =>
                      value.isEmpty ? 'please enter password' : null),
              SizedBox(
                height: 10,
              ),
              FlatButton(
                minWidth: double.infinity,
                color: Colors.blue,
                child: Text('Login', style: TextStyle(color: Colors.white)),
                onPressed: () {
                  Map  creds = {
                    'email' : _emailController.text,
                    'password' : _passwordController.text,
                    'device_name' : 'mobile',
                  };
                  if (_formKey.currentState.validate()) {
                    print(creds);
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
