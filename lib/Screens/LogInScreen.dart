import 'package:flutter/material.dart';
import 'package:signin_singnup/Screens/AdminPage.dart';
import 'package:signin_singnup/Screens/splashScreen.dart';
import 'package:signin_singnup/services/firebase_auth_methods.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'Resetpassword.dart';
import 'SignUpScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login_screen extends StatefulWidget {
  const Login_screen({Key? key}) : super(key: key);

  @override
  State<Login_screen> createState() => _Login_screenState();
}

class _Login_screenState extends State<Login_screen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

//create a sign in function

  void logInFucntion() {
    FirebaseAuthMethods(FirebaseAuth.instance).logInWithEmail(
        email: emailController.text,
        password: passwordController.text,
        context: context);
  }

  // void forgotpassword(){
  //   FirebaseAuthMethods(FirebaseAuth.instance).
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: _title()),
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Sign in',
                    style: TextStyle(
                        fontSize: 30,
                        color: Color(0xffe46b10),
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  )),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("images/1.png"))),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
              _forogtPassword(context: context),
              Container(
                  height: 50,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffe46b10)),
                    child: const Text('Login'),
                    onPressed: () {
                      logInFucntion();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SplashScreen(),
                          ));
                    },
                  )),
              Row(
                children: <Widget>[
                  const Text('Do not have account?'),
                  TextButton(
                    child: const Text(
                      'Sign up',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return SignUpPage();
                        },
                      ));
                    },
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              TextButton(
                  onPressed: () {
                    FirebaseAuthMethods(FirebaseAuth.instance)
                        .signInWithGmail(context);
                  },
                  child: Text(
                    "Sign in with google instead",
                    style: TextStyle(fontSize: 20),
                  ))
            ],
          )),
    );
  }
}

Widget _title() {
  return RichText(
    softWrap: false,
    text: TextSpan(
        onEnter: ((event) {
          print("123");
        }),
        text: 'Lt',
        style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Color(0xffe46b10)),
        children: [
          TextSpan(
            text: 'uc Stu',
            style: TextStyle(color: Colors.black, fontSize: 30),
          ),
          TextSpan(
            text: 'dents',
            style: TextStyle(color: Color(0xffe46b10), fontSize: 30),
          ),
        ]),
  );
}

Widget _forogtPassword({required context}) {
  return TextButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ResetPassword(),
            ));
      },
      child: Text("Forgot password ?"));
}
