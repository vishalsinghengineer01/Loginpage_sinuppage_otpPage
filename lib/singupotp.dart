import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class sinUpApp extends StatefulWidget {
  const sinUpApp({super.key});

  @override
  State<sinUpApp> createState() => _sinUpAppState();
}

class _sinUpAppState extends State<sinUpApp> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool agreedToTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
          leading: IconButton(color: Colors.white12,
             // constraints: BoxConstraints.expand(height: 1),
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.grey.shade100)),
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ))),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Text('Sign Up',
                  textAlign: TextAlign.end,
                  style: GoogleFonts.oswald(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 30))),
              SizedBox(
                height: 10,
              ),
              Material(
                elevation: 20.0,
                shadowColor: Colors.white,
                child: TextFormField(
              maxLines: null,
                    controller: nameController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(vertical: 13),
                        labelText: '   ',
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide:
                                BorderSide(color: Colors.white, width: 3.0))),
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(fontWeight: FontWeight.w500))),
              ),
              SizedBox(height: 16.0),
              Material(
                elevation: 20.0,
                shadowColor: Colors.white,
                child: TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 13),
                        labelText: '  Email address',
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide:
                                BorderSide(color: Colors.white, width: 3.0))),
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(fontWeight: FontWeight.w500))),
              ),
              SizedBox(height: 16.0),
              Material(
                elevation: 20.0,
                shadowColor: Colors.white,
                child: TextFormField(
                    controller: phoneController,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 13),
                        labelText: '   Phone number',
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide:
                                BorderSide(color: Colors.white, width: 3.0))),
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(fontWeight: FontWeight.w500))),
              ),
              SizedBox(height: 16.0),
              Material(
                elevation: 20.0,
                shadowColor: Colors.white,
                child: TextFormField(
                    controller: passwordController,
                    autofocus: false,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 13),
                        labelText: '   Password',
                        suffixIcon: Icon(Icons.visibility_off),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide:
                                BorderSide(color: Colors.white, width: 2.0))),
                    obscureText: true,
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(fontWeight: FontWeight.w500))),
              ),
              SizedBox(height: 16.0),
              Row(
                children: [
                  Checkbox(
                    value: agreedToTerms,
                    onChanged: (value) {
                      setState(() {
                        agreedToTerms = value!;
                      });
                    },
                  ),
                  RichText(
                      text: TextSpan(
                          text: 'I agree to all ',
                          style: TextStyle(color: Colors.black),
                          children: [
                        TextSpan(
                          text: 'Terms and Conditions',
                          style: TextStyle(
                            color: Colors.green,
                          ),
                        )
                      ]))
                ],
              ),
              SizedBox(height: 32.0),
              FractionallySizedBox(
                widthFactor: 1,
                child: ElevatedButton(
                  onPressed: agreedToTerms
                      ? () {
                          String name = nameController.text;
                          String email = emailController.text;
                          String phone = phoneController.text;
                          String password = passwordController.text;
                        }
                      : null,
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.yellow.shade600),
                  ),
                  child: Text('Submit',

                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(fontWeight: FontWeight.w900,
                          fontSize: 20,
                          color: Colors.black))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
