// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:e_commerce_app/screens/home.dart';
import 'package:e_commerce_app/screens/register.dart';
import 'package:e_commerce_app/shared/colors.dart';
import 'package:e_commerce_app/shared/custom%20text%20field.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: greyColor,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(33.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 64,
                ),
                MyTextField(
                  textInputTypee: TextInputType.emailAddress,
                  hinttext: 'Enter Your Email',
                  isPassword: false,
                ),
                SizedBox(
                  height: 33,
                ),
                MyTextField(
                  textInputTypee: TextInputType.visiblePassword,
                  hinttext: 'Enter your password',
                  isPassword: true,
                ),
                SizedBox(
                  height: 33,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Home(),
                        ));
                  },
                  child: Text('Sign In'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(greenColor[300]),
                    padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 33,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account ?',
                      style: TextStyle(fontSize: 15),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (_) => Register()));
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
