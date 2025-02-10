import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_sample_v2/GetRoutes.dart';

import 'Common.dart';
import 'custom_widget.dart';
import 'fade_animation.dart';

class ForgetPasswordPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ForgetPasswordPage();
  }

}

class _ForgetPasswordPage extends State<ForgetPasswordPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    var bodyView = SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FadeInAnimation(
              delay: 1,
              child: IconButton(
                  onPressed: () {
                    //GoRouter.of(context).pop();
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
                    delay: 1.3,
                    child: Text(
                      "Forgot Password?",
                      style: Common().titelTheme,
                    ),
                  ),
                  FadeInAnimation(
                    delay: 1.6,
                    child: Text(
                      "Don't worry! It occurs. Please enter the email address linked with your account.",
                      style: Common().mediumThemeblack,
                    ),
                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(12.0),
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
                      height: 30,
                    ),
                    FadeInAnimation(
                      delay: 2.1,
                      child: CustomElevatedButton(
                        message: "Send Code ",
                        function: () {
                          Navigator.pushNamed(context, GetRoutes.otpVerificationPage);
                        },
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Spacer(),
            FadeInAnimation(
              delay: 2.4,
              child: Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Don’t have an account?",
                      style: Common().hinttext,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, GetRoutes.signUpPage);
                          //GoRouter.of(context)
                          //    .pushNamed(Routers.signuppage.name);
                        },
                        child: Text(
                          "Register Now",
                          style: Common().mediumTheme,
                        )),
                  ],
                ),
              ),
            )

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