import 'package:billing_app/screens/signup_screen.dart';
import 'package:billing_app/widgets/auth_buttons.dart';
import 'package:flutter/material.dart';

import './login_screen.dart';
import 'package:page_transition/page_transition.dart';

class HomeScreen extends StatelessWidget {
  static const routename = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: const Color.fromRGBO(3, 7, 18, 1),
      child: Column(
        children: [
          const SizedBox(height: 80),
           Center(
              child: Text(
            'DiBi',
            style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.w400,
                color: Theme.of(context).primaryColor),
          )),
          const SizedBox(height: 30),
          SizedBox(
            height: 370,
            width: 370,
            child: Image.asset('assets/images/home.png'),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Hey there!',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w300),
              ),
              
              const Text(
                'Welcome to Di-Bi.',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 24,
              ),
              AuthButtons(
                  name: 'SIGN UP',
                  backColor: Theme.of(context).primaryColor,
                  onTapF: () {
                    Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.fade,
                          duration: const Duration(milliseconds: 300),
                          child: SignupScreen(),
                        ));
                  },
                  textColor: Colors.white),
              const SizedBox(
                height: 12,
              ),
              AuthButtons(
                  name: 'SIGN IN',
                  backColor: Colors.white,
                  onTapF: () {
                    Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.fade,
                          duration: const Duration(milliseconds: 300),
                          child: LoginScreen(),
                        ));
                  },
                  textColor: Theme.of(context).primaryColor),
              const SizedBox(
                height: 100,
              )
            ],
          )
        ],
      ),
    ));
  }
}
