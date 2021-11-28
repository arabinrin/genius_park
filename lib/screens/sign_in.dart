// @dart=2.9

import 'package:flutter/material.dart';
import 'package:genius_park/screens/home_page.dart';
import 'package:genius_park/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:form_field_validator/form_field_validator.dart';

class SingIn extends StatelessWidget {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _newEmailController = TextEditingController();
  TextEditingController _newPasswordController = TextEditingController();

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  String validatePassword(String value) {
    if (value.isEmpty) {
      return "* Required";
    } else if (value.length < 6) {
      return "Password should be atleast 6 characters";
    } else if (value.length > 15) {
      return "Password should not be greater than 15 characters";
    } else
      return '';
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              height: height * .6,
              width: width,
              decoration: const BoxDecoration(
                color: Colors.red,
                // image: DecorationImage(
                //   image: AssetImage(
                //     "images/slider2.png",
                //   ),
                // fit: BoxFit.cover,
              ),
              child: Image.asset(
                "images/slider2.png",
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: Container(
              height: height * .6,
              width: width,
              decoration: BoxDecoration(
                color: Colors.red.withOpacity(.3),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.all(40),
              height: height * .55,
              width: width,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: Form(
                autovalidate: true, //check for validation while typing
                key: formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: Text('SIGN IN',
                          style: GoogleFonts.merriweather(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 25,
                              color: Colors.black,
                            ),
                          )),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Username',
                      style: GoogleFonts.merriweather(
                        textStyle: const TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15)),
                        child: TextFormField(
                          validator: MultiValidator([
                            EmailValidator(errorText: "Enter valid email id"),
                          ]),
                          controller: _emailController,
                          decoration: const InputDecoration(
                              hintText: 'Email', icon: Icon(Icons.email)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Password',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15)),
                        child: TextFormField(
                          validator: MultiValidator([
                            MinLengthValidator(6,
                                errorText:
                                    "Password should be atleast 6 characters"),
                            MaxLengthValidator(15,
                                errorText:
                                    "Password should not be greater than 15 characters")
                          ]),
                          obscureText: true,
                          controller: _passwordController,
                          decoration: const InputDecoration(
                              hintText: 'Password', icon: Icon(Icons.security)),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Forget password?',
                        style: GoogleFonts.merriweather(
                          textStyle: const TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        if (formkey.currentState.validate()) {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => HomePage()));
                          print("Validated");
                        } else {
                          print("Not Validated");
                        }
                      },
                      child: Container(
                        height: 50,
                        width: width * .75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.red,
                        ),
                        child: Center(
                            child: Text(
                          'Sign In',
                          style: GoogleFonts.merriweather(
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        )),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                        child: Text(
                      'You Don’t Have An Account? Sign up',
                      style: GoogleFonts.merriweather(
                        textStyle: const TextStyle(fontSize: 14),
                      ),
                    )),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
