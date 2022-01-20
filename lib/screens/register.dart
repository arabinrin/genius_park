import 'package:flutter/material.dart';
import 'package:genius_park/screens/home_page.dart';
import 'package:genius_park/screens/mainhome.dart';
import 'package:genius_park/utils/constant.dart';
import 'package:genius_park/utils/navigator.dart';
import 'package:genius_park/widgets/textfield.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

bool isLogin = false;

class _SignUpState extends State<SignUp> {
  TextEditingController email = TextEditingController();
  TextEditingController apple = TextEditingController();

  TextEditingController google = TextEditingController();

  TextEditingController facebook = TextEditingController();

  TextEditingController guest = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final _key = GlobalKey<ScaffoldState>();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 50.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Let’s Get ',
                    style: GoogleFonts.merriweather(
                      textStyle: TextStyle(
                        fontSize: 28.sp,
                      ),
                    ),
                  ),
                  Text(
                    'Started',
                    style: GoogleFonts.merriweather(
                      textStyle: TextStyle(
                        fontSize: 28.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25.sp,
              ),
              Container(
                width: 300,
                child: Text(
                  'Train the mind with inspiring and motivating music',
                  style: GoogleFonts.nunito(
                    textStyle: TextStyle(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.black.withOpacity(.8),
                      letterSpacing: .5,
                    ),
                  ),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RoundedInputField(
                      controller: google,
                      hintText: 'Register with Google',
                      icon: 'images/google.png',
                    ),
                    RoundedInputField(
                      controller: apple,
                      icon: 'images/apple.png',
                      hintText: 'Register with Apple ID',
                    ),
                    RoundedInputField(
                      controller: email,
                      icon: 'images/email.png',
                      hintText: 'Register with Email',
                    ),
                    RoundedInputField(
                      controller: facebook,
                      icon: 'images/facebook.png',
                      hintText: 'Register with Facebook',
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 1,
                          width: 100,
                          color: Colors.grey.shade500,
                        ),
                        Text(
                          '  or as guest  ',
                          style: GoogleFonts.nunito(
                            textStyle: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.black.withOpacity(.8),
                            ),
                          ),
                        ),
                        Container(
                          height: 1,
                          width: 100,
                          color: Colors.grey.shade500,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    RoundedInputField(
                      controller: facebook,
                      icon: 'images/user.png',
                      hintText: 'Sign In as guest',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 80.h,
              ),
              Container(
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Sign In',
                      style: GoogleFonts.nunito(
                        textStyle: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.black.withOpacity(.8),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        changeScreen(context, UserHomeScreen());
                      },
                      child: Container(
                        padding: EdgeInsets.all(5),
                        height: 80,
                        width: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: kred,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.arrow_forward,
                            color: kwhite,
                            size: 25,
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
    );
  }
}
