import 'package:billing_app/widgets/auth_buttons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../icons.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool? isChecked = false;

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
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      'Sign in To your Account',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(103, 226, 210, 1)),
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                SizedBox(
                  width: 340,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextField(
                          textInputAction: TextInputAction.next,
                          style: const TextStyle(color: Colors.white),
                          keyboardType: TextInputType.emailAddress,
                          cursorColor: Colors.grey,
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.mail_outline,
                              color: Colors.grey,
                              size: 20,
                            ),
                            hintText: 'E-Mail Address',
                            hintStyle: GoogleFonts.spaceGrotesk(
                                color: Colors.grey,
                                fontWeight: FontWeight.w100,
                                fontSize: 17),
                            focusedBorder: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16))),
                            enabledBorder: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16))),
                            filled: true,
                            fillColor: const Color.fromRGBO(47, 47, 47, 1),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextField(
                          textInputAction: TextInputAction.done,
                          style: const TextStyle(color: Colors.white),
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          cursorColor: Colors.grey,
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.lock_open_outlined,
                              color: Colors.grey,
                              size: 20,
                            ),
                            hintText: 'Password',
                            hintStyle: GoogleFonts.spaceGrotesk(
                                color: Colors.grey,
                                fontWeight: FontWeight.w100,
                                fontSize: 17),
                            focusedBorder: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16))),
                            enabledBorder: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16))),
                            filled: true,
                            fillColor: const Color.fromRGBO(47, 47, 47, 1),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                SizedBox(
                                  height: 10,
                                  width: 10,
                                  child: Checkbox(
                                      value: isChecked,
                                      shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(6))),
                                      fillColor: MaterialStateProperty.all(
                                          Colors.white),
                                      activeColor: Colors.white,
                                      checkColor: const Color.fromRGBO(
                                          103, 226, 210, 1),
                                      onChanged: (value) {
                                        setState(() {
                                          isChecked = value;
                                        });
                                      }),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  'Remember Me',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            const Text(
                              'Forgot Password?',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 80,
                        ),
                        Row(
                          children: const [
                            SizedBox(
                              width: 150,
                              child: Divider(color: Colors.white, thickness: 2),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'or',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 22),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            SizedBox(
                              width: 150,
                              child: Divider(color: Colors.white, thickness: 2),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            SizedBox(
                              child: Icon(
                                MyFlutterApp.facebook_logo,
                                color: Colors.white,
                                size: 38,
                              ),
                            ),
                            SizedBox(
                              child: Icon(
                                MyFlutterApp.google,
                                color: Colors.white,
                                size: 38,
                              ),
                            ),
                            SizedBox(
                              child: Icon(
                                MyFlutterApp.apple_logo,
                                color: Colors.white,
                                size: 38,
                              ),
                            ),
                          ],
                        ),
                        
                        const SizedBox(
                          height: 183,
                        ),
                        AuthButtons(
                            name: 'LOG IN',
                            backColor: Theme.of(context).primaryColor,
                            onTapF: () {},
                            textColor: Colors.white)
                      ]),
                ),
                const SizedBox(
                  height: 140,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
