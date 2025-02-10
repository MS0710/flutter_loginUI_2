import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_sample_v2/GetRoutes.dart';

import 'Common.dart';
import 'custom_widget.dart';
import 'fade_animation.dart';

class NewPasswordPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _NewPasswordPage();
  }

}

class _NewPasswordPage extends State<NewPasswordPage>{
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
                    delay: 1.3,
                    child: Text(
                      "Create new password",
                      style: Common().titelTheme,
                    ),
                  ),
                  FadeInAnimation(
                    delay: 1.6,
                    child: Text(
                      "Your new password must be unique from those previously used.",
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
                        hinttext: 'New password',
                        obsecuretext: false,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const FadeInAnimation(
                      delay: 2.1,
                      child: CustomTextFormField(
                        hinttext: 'Confirm password',
                        obsecuretext: false,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    FadeInAnimation(
                      delay: 2.4,
                      child: CustomElevatedButton(
                        message: "Reset Password ",
                        function: () {
                          Navigator.pushNamed(context, GetRoutes.passwordChangesPage);
                        },
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const Spacer(),
            FadeInAnimation(
              delay: 2.5,
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
                        },
                        child: Text(
                          "Register Now",
                          style: Common().mediumTheme,
                        )),
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