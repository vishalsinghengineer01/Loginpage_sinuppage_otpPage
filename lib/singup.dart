import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'otpgeter.dart';


class sinUp extends StatefulWidget {
  const sinUp({super.key});

  @override
  State<sinUp> createState() => _sinUpState();
}

class _sinUpState extends State<sinUp> {
  final TextEditingController emailcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white12,
        title: Text(
          'Sin Up ',

         // style: TextStyle(backgroundColor: Colors.blue),
        ),
        centerTitle: true,
      ),
      body: ListView(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Text(
                'Welcome',
                style: TextStyle(fontSize: 40.0),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                'Let Get Start',
                style: TextStyle(fontSize: 40.0),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Material(
            elevation: 20,
            shadowColor: Colors.white,
            child: TextFormField(
                controller: emailcontroller,
                decoration: InputDecoration(
                  contentPadding: EdgeInsetsDirectional.symmetric(vertical: 15.0),
                  labelText: '   Email id',
                  suffixIcon: Icon(Icons.email),
                )),
          ),
          SizedBox(
            height: 100,
          ),
          FractionallySizedBox(
            widthFactor: 1,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => OtpVerificationScreen(
                              emailAddress: emailcontroller.text.trim(),
                            )));
              },
              child: Text(
                'Proceed',
                style:
                    TextStyle(fontSize: 15.0, color: Colors.grey),
              ),
            ),
          ),
          SizedBox(
            height: 100.0,
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
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/001-facebook 1.png',
                height: 50,
                width: 50,
              ),
              SizedBox(
                width: 20,
              ),
              Image.asset(
                'assets/Group 123.png',
                height: 50,
                width: 50,
              )
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Not a Member?'),
              const SizedBox(
                width: 8,
              ),
              Text('Register With Us')
            ],
          )
        ],
      ),
    );
  }
}
