import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projects/singin.dart';
import 'package:projects/singup.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _obscure = true;
  final _formKey = GlobalKey<FormState>();
  void validateLogin(BuildContext context) {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    print('Email: $email');
    print('Password: $password');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text('Login Page '),
          centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      'Hey.',
                      style: TextStyle(fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                    )],
                ),
                Row(
                  children: [
                    Text(
                      'Login Now,',
                      style: TextStyle(fontSize: 40.0),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Material(
                  elevation: 20,
                  shadowColor: Colors.grey,
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return ('please enter your username');
                      }
                      return null;
                    },
                    controller: emailController,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                        labelText: ' EmailId',
                        suffixIcon: Icon(Icons.email),
                        border: new OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.green))),
                  ),
                ),
                SizedBox(height: 20),
                Material(
                  elevation: 20,
                  shadowColor: Colors.grey,
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return ('please enter your password');
                      }
                      return null;
                    },
                    controller: passwordController,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                        suffixIcon: IconButton(
                          padding: EdgeInsetsDirectional.only(end: 12.8),
                          icon: Icon(
                              _obscure ? Icons.visibility : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              _obscure = !_obscure;
                            });
                          },
                        ),
                        labelText: '  Password',
                        border: new OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.green))),
                    obscureText: _obscure,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Froget Password',
                      style: TextStyle(fontSize: 15.0),
                    ),
                  ],
                ),
                SizedBox(height: 32.0),
                FractionallySizedBox(
                  widthFactor: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processing data')));
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sinUp()));
                      }
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 20.0,
                      color: Colors.grey),
                    ),
                  ),
                ),
                SizedBox(
                  height: 150.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Divider(
                        height: 1,
                        thickness: 2.0,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      ' Or Register With ',
                      style: TextStyle(fontSize: 30.0),
                    ),
                    Expanded(
                      child: Divider(
                        height: 1,
                        thickness: 2.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/001-facebook 1.png',
                      height: 100,
                      width: 50,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        signInWithGoogle();
                        //Navigator.push(context, MaterialPageRoute(builder: (context) => signInWithGoogle()));
                      }, // Image tapped
                      child: Image.asset(
                        'assets/Group 123.png', height: 50, width: 50,
                        fit: BoxFit.cover, // Fixes border issues
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('   New Here?'),
                    const SizedBox(
                      width: 8,
                    ),
                    Text('Sin Up', style: TextStyle(color: Colors.grey),),

                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
