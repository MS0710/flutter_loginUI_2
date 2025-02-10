import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_sample_v2/GetRoutes.dart';

import 'Common.dart';
import 'custom_widget.dart';
import 'fade_animation.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoginPage();
  }

}

class _LoginPage extends State<LoginPage>{

  final GlobalKey _formKey = GlobalKey<FormState>();
  late String _email;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    var bodyView2 = SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FadeInAnimation(
              delay: 1,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  CupertinoIcons.back,
                  size:35,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FadeInAnimation(
                    delay: 1.3,
                    child: Text(
                      "Welcome back! Glad ",
                      style: Common().titelTheme,
                    ),
                  ),

                  FadeInAnimation(
                    delay: 1.6,
                    child: Text(
                      "to see you, Again! ",
                      style: Common().titelTheme,
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(12),
              child: Form(
                child: Column(
                  children: [
                    const FadeInAnimation(
                      delay: 1.9,
                      child: CustomTextFormField(
                        hinttext: 'Enter your email',
                        obsecuretext: false,
                      ),
                    ),

                    const SizedBox(
                      height: 10,
                    ),

                    FadeInAnimation(
                      delay: 2.2,
                      child: TextFormField(
                        obscureText: false,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(18),
                          hintText: "Enter your password",
                          hintStyle: Common().hinttext,
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          suffixIcon: IconButton(
                            icon: const Icon(Icons.remove_red_eye_outlined),
                            onPressed: () {
                              print("test1");
                            },
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 10,
                    ),

                    FadeInAnimation(
                      delay: 2.5,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, GetRoutes.forgetPasswordPage);
                          },
                          child: const Text(
                            "Forget Password?",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Urbanist-SemiBold",
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 10,
                    ),

                    FadeInAnimation(
                      delay: 2.8,
                      child: CustomElevatedButton(
                        message: "Login",
                        function: () {},
                        color: Colors.black,
                      ),
                    ),

                    const SizedBox(
                      height: 15,
                    ),

                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 200,
                        child: Column(
                          children: [
                            FadeInAnimation(
                              delay: 2.2,
                              child: Text(
                                "Or Log with",
                                style: Common().semiboldblack,
                              ),
                            ),

                            const SizedBox(
                              height: 20,
                            ),

                            FadeInAnimation(
                              delay: 2.4,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 10, bottom: 10, right: 30, left: 30),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    SvgPicture.asset("assets/images/facebook_ic (1).svg"),
                                    SvgPicture.asset("assets/images/google_ic-1.svg"),
                                    Image.asset(
                                      "assets/images/Vector.png",
                                      color: Colors.grey,
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            FadeInAnimation(
                              delay: 2.8,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Don’t have an account?",
                                      style: Common().hinttext,
                                    ),

                                    TextButton(
                                      onPressed: (){
                                        Navigator.pushNamed(context, GetRoutes.signUpPage);
                                      },
                                      child: Text(
                                        "Register Now",
                                        style: Common().mediumTheme,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),

                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );

    final widget = Scaffold(
      body: bodyView2,
    );
    return widget;
  }

}