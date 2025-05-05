import 'package:ecommerce_app/constant_widget/comstands.dart';
import 'package:ecommerce_app/view/login_screen/signin_screen.dart';
import 'package:ecommerce_app/view/mainScreen/MainScreen.dart';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passwordVisible = false;

  final _loginkey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 11),
      child: SingleChildScrollView(
        child: Form(
          key: _loginkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Kheight30,
              SafeArea(
                child: Text(
                  'Sign in to your \n Account',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Kheight10,
              Text(
                'Enter Your email and password to log in',
                style: TextStyle(color: Colors.grey[700]),
              ),
              Kheight30,
              Kheight10,
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  label: Text('Email'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              Kheight30,
              Kheight10,
              TextField(
                controller: passwordController,
                obscureText: passwordVisible,
                decoration: InputDecoration(
                    label: Text('password'),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: greyColor),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    suffixIcon: passwordVisible
                        ? Icon(Icons.visibility_off)
                        : Icon(Icons.visibility)),
                onTap: () {
                  setState(() {
                    passwordVisible = !passwordVisible;
                  });
                },
              ),
              Kheight20,
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Forgot Password ?',
                        style: TextStyle(
                            color: const Color.fromARGB(255, 80, 26, 1),
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Kheight20,
              MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => Mainscreen()));
                },
                color: const Color.fromARGB(255, 255, 192, 5),
                minWidth: 400,
                height: 45,
                child: Text(
                  'Log in',
                  style: TextStyle(
                      color: Colors.white, fontWeight: fwlogin, fontSize: 16),
                ),
              ),
              Kheight20,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(height: 1, color: greyColor, width: 160),
                  Kwidth10,
                  Text(
                    'or',
                    style: TextStyle(color: greyColor),
                  ),
                  Kwidth10,
                  Container(height: 1, color: greyColor, width: 160),
                ],
              ),
              Kheight20,
              OutlinedButton(
                  style: ButtonStyle(
                      fixedSize: WidgetStatePropertyAll(Size(400, 50)),
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)))),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          height: 17,
                          width: 17,
                          child: Image.asset('assets/logo/google (1).png')),
                      Kwidth10,
                      Text('Continue with Google',
                          style: TextStyle(
                              color: Colors.black, fontWeight: fwlogin))
                    ],
                  )),
              Kheight20,
              OutlinedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      fixedSize: WidgetStatePropertyAll(Size(400, 50)),
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          height: 17,
                          width: 17,
                          child: Image.asset('assets/logo/facebook.png')),
                      Kwidth10,
                      Text('Continue with Facebook',
                          style: TextStyle(
                              color: Colors.black, fontWeight: fwlogin))
                    ],
                  )),
              Kheight20,
              SizedBox(
                height: 80,
              ),
              SizedBox(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  Kwidth10,
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SigninScreen()));
                    },
                    child: Text("Sign Up",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 80, 26, 1),
                        )),
                  )
                ],
              )),
            ],
          ),
        ),
      ),
    ));
  }
}
