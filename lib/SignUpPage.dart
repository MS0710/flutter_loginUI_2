import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'Common.dart';
import 'custom_widget.dart';
import 'fade_animation.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SignUpPage();
  }

}

class _SignUpPage extends State<SignUpPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    var bodyView = SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FadeInAnimation(
              delay: 0.6,
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    CupertinoIcons.back,
                    size: 35,
                  )),
            ),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FadeInAnimation(
                    delay: 0.9,
                    child: Text(
                      "Hello! Register to get  ",
                      style: Common().titelTheme,
                    ),
                  ),
                  FadeInAnimation(
                    delay: 1.2,
                    child: Text(
                      "started",
                      style: Common().titelTheme,
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.all(12.0),
              child: Form(
                child: Column(
                  children: [
                    const FadeInAnimation(
                      delay: 1.5,
                      child: CustomTextFormField(
                        hinttext: 'Username',
                        obsecuretext: false,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const FadeInAnimation(
                      delay: 1.8,
                      child: CustomTextFormField(
                        hinttext: 'Email',
                        obsecuretext: false,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const FadeInAnimation(
                      delay: 2.1,
                      child: CustomTextFormField(
                        hinttext: 'Password',
                        obsecuretext: true,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const FadeInAnimation(
                      delay: 2.4,
                      child: CustomTextFormField(
                        hinttext: 'Confirm password',
                        obsecuretext: false,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    FadeInAnimation(
                      delay: 2.7,
                      child: CustomElevatedButton(
                        message: "Register",
                        function: () {
                          Fluttertoast.showToast(msg: "Register OK");
                          Navigator.pop(context);
                        },
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(
              height: 15,
            ),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                height: 100,
                width: double.infinity,
                child: Column(
                  children: [
                    FadeInAnimation(
                      delay: 2.9,
                      child: Text(
                        "Or Register with",
                        style: Common().semiboldblack,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    FadeInAnimation(
                      delay: 3.2,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 10, bottom: 10, right: 30, left: 30),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(
                                "assets/images/facebook_ic (1).svg"),
                            SvgPicture.asset("assets/images/google_ic-1.svg"),
                            Image.asset(
                              "assets/images/Vector.png",
                              color: Colors.grey,
                            )
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
      body: bodyView,
    );
    return widget;
  }

}