import 'package:flutter/material.dart';
import 'package:login_sample_v2/ForgetPasswordPage.dart';
import 'package:login_sample_v2/GetRoutes.dart';
import 'package:login_sample_v2/LoginPage.dart';
import 'package:login_sample_v2/NewPasswordPage.dart';
import 'package:login_sample_v2/OtpVerificationPage.dart';
import 'package:login_sample_v2/PasswordChangesPage.dart';
import 'package:login_sample_v2/SignUpPage.dart';

import 'Common.dart';
import 'custom_widget.dart';
import 'fade_animation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: AuthenticationUI(),
      routes: {
        GetRoutes.main: (context) => AuthenticationUI(),
        GetRoutes.loginPage: (context) => LoginPage(),
        GetRoutes.signUpPage: (context) => SignUpPage(),
        GetRoutes.forgetPasswordPage: (context) => ForgetPasswordPage(),
        GetRoutes.otpVerificationPage: (context) => OtpVerificationPage(),
        GetRoutes.newPasswordPage: (context) => NewPasswordPage(),
        GetRoutes.passwordChangesPage: (context) => PasswordChangesPage(),
      },
    );
  }
}

class AuthenticationUI extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AuthenticationUI();
  }

}

class _AuthenticationUI extends State<AuthenticationUI>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var bodyView = SafeArea(
        child: Stack(
          children: <Widget>[
            SizedBox(
                height: MediaQuery.of(context).size.height ,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "assets/images/img.png",
                  ///縮放品質
                  filterQuality: FilterQuality.high,
                  ///圖片適應模式
                  fit: BoxFit.cover,
                )
            ),

            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 60,
                  ),

                  FadeInAnimation(
                    delay: 2,
                    child: CustomElevatedButton(
                      message: "Login",
                      function: (){
                        Navigator.pushNamed(context, GetRoutes.loginPage,);
                      },
                      color: Colors.black,
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  FadeInAnimation(
                    delay: 2.5,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, GetRoutes.signUpPage,);
                      },
                      style: ButtonStyle(
                        side: const MaterialStatePropertyAll(BorderSide(color: Colors.black)),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                        fixedSize: const MaterialStatePropertyAll(Size.fromWidth(370)),
                        padding: const MaterialStatePropertyAll(EdgeInsets.symmetric(vertical: 20)),
                      ),
                      child: const Text(
                        "Register",
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: "Urbanist-SemiBold",
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 50,
                  ),

                  FadeInAnimation(
                    delay: 2.5,
                    child: TextButton(
                      onPressed: () {  },
                      child: Text("Continue as guest",style: Common().mediumTheme,),
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
    );

    final widget = Scaffold(
      body: bodyView,
    );

    return widget;
  }

}