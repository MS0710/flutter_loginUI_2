import 'package:flutter/material.dart';
import 'package:login_sample_v2/GetRoutes.dart';
import 'package:lottie/lottie.dart';

import 'Common.dart';
import 'custom_widget.dart';
import 'fade_animation.dart';

class PasswordChangesPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PasswordChangesPage();
  }

}

class _PasswordChangesPage extends State<PasswordChangesPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var bodyView = Scrollbar(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              LottieBuilder.asset("assets/images/ticker.json"),
              FadeInAnimation(
                delay: 1,
                child: Text(
                  "Password Changed!",
                  style: Common().titelTheme,
                ),
              ),
              FadeInAnimation(
                delay: 1.5,
                child: Text(
                  "Your password has been changed successfully",
                  style: Common().mediumThemeblack,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              FadeInAnimation(
                delay: 2,
                child: CustomElevatedButton(
                  message: "Back to Login",
                  function: () {
                    Navigator.pushNamed(context, GetRoutes.loginPage);
                  },
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );

    final widget = Scaffold(
      body: bodyView,
    );
    return widget;
  }

}