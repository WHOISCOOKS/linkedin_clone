import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_linkedin/widgets/mycolor.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpScreen4 extends StatefulWidget {
  const SignUpScreen4({super.key});

  @override
  State<SignUpScreen4> createState() => _SignUpScreen4State();
}

class _SignUpScreen4State extends State<SignUpScreen4> {
  bool remember = false;
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: SvgPicture.asset(
                    "assets/Logo.svg",
                    width: 35,
                    height: 35,
                  ),
                ),
                SizedBox(height: 40),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Text(
                        "Set you password",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 50),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Email or Phone*",
                        ),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                          labelText: "Password*",
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscureText
                                  ? Icons.remove_red_eye
                                  : Icons.visibility_off,
                              size: 30,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            value: remember,
                            activeColor: Colors.green,
                            onChanged: (value) {
                              setState(() {
                                remember = value!;
                              });
                            },
                          ),
                          Text(
                            "Remember me",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Spacer(),
                          TextButton(
                            onPressed: () {
                              // Add action for "Learn more" here
                            },
                            child: Text(
                              "Learn more",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 16,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      SizedBox(
                        width: double.infinity,
                        height: 55,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUpScreen4(),
                                ));
                          },
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  kPrimaryColor),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                    side: BorderSide(color: kPrimaryColor)),
                              )),
                          child: Text(
                            "Continue",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
