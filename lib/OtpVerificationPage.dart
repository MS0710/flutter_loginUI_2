import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_sample_v2/GetRoutes.dart';
import 'package:pinput/pinput.dart';

import 'Common.dart';
import 'custom_widget.dart';
import 'fade_animation.dart';

class OtpVerificationPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _OtpVerificationPage();
  }

}

class _OtpVerificationPage extends State<OtpVerificationPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
          fontSize: 20, color: Colors.grey, fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade800),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Colors.grey),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: const Color.fromRGBO(234, 239, 243, 1),
      ),
    );

    var bodyView2 = SafeArea(
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
                      "OTP Verification",
                      style: Common().titelTheme,
                    ),
                  ),
                  FadeInAnimation(
                    delay: 1.6,
                    child: Text(
                      "Enter the verification code we just sent on your email address.",
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
                    FadeInAnimation(
                      delay: 1.9,
                      child: Pinput(
                        defaultPinTheme: defaultPinTheme,
                        focusedPinTheme: focusedPinTheme,
                        submittedPinTheme: submittedPinTheme,
                        validator: (s) {
                          return s == '2222' ? null : 'Pin is incorrect';
                        },
                        pinputAutovalidateMode:
                        PinputAutovalidateMode.onSubmit,
                        showCursor: true,
                        onCompleted: (pin) {
                          print(pin);
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    FadeInAnimation(
                      delay: 2.1,
                      child: CustomElevatedButton(
                        message: "Verify",
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

