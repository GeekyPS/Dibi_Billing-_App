import 'package:billing_app/screens/signup_screen.dart';
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
          const Center(
              child: Text(
            'DiBi',
            style: TextStyle(
              fontFamily: 'Ridley_Grotesk',
                fontSize: 64,
                fontWeight: FontWeight.w400,
                color:  Color.fromRGBO(103, 226, 210, 1)),
          )),
          const SizedBox(height: 50),
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
                  fontFamily: 'Ridley_Grotesk',
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w300),
              ),
              const SizedBox(
                height: 1,
              ),
              const Text(
                'Welcome to Di-Bi.',
                style: TextStyle(
                  fontFamily: 'Ridley_Grotesk',
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 24,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        duration: const Duration(milliseconds: 300 ),
                        child: SignupScreen(),
                      ));
                },
                child: Container(
                  width: 320,
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(103, 226, 210, 1),
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                  child: const Center(
                    child: Text(
                      'SIGN UP',
                      style: TextStyle(fontSize: 18, color: Colors.white,fontFamily: 'Ridley_Grotesk'),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        duration: const Duration(milliseconds: 300 ),
                        child: LoginScreen(),
                      ));
                },
                child: Container(
                  width: 320,
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                  child: const Center(
                    child: Text(
                      'SIGN IN',
                      style: TextStyle(
                        fontFamily: 'Ridley_Grotesk',
                          fontSize: 18,
                          color: Color.fromRGBO(103, 226, 210, 1)),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
