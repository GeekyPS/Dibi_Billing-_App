import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(3, 7, 18, 1),
        leading: IconButton(
          onPressed: Navigator.of(context).pop,
          icon: const Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        color: const Color.fromRGBO(3, 7, 18, 1),
      ),
    );
  }
}
