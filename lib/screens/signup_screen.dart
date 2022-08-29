import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/auth_buttons.dart';
import '../icons.dart';

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
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      'Create Your Account',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(103, 226, 210, 1)),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: 340,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(
                        textInputAction: TextInputAction.next,
                        style: const TextStyle(color: Colors.white),
                        keyboardType: TextInputType.name,
                        cursorColor: Colors.grey,
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.person_outline,
                            color: Colors.grey,
                            size: 20,
                          ),
                          hintText: 'Full Name',
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
                        height: 8,
                      ),
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
                        height: 8,
                      ),
                      TextField(
                        textInputAction: TextInputAction.next,
                        style: const TextStyle(color: Colors.white),
                        keyboardType: TextInputType.number,
                        cursorColor: Colors.grey,
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.smartphone_outlined,
                            color: Colors.grey,
                            size: 20,
                          ),
                          hintText: 'Phone Number',
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
                        height: 12,
                      ),
                      const Text('Must Contain atleast 8 characters',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                              fontWeight: FontWeight.w300)),
                      const SizedBox(
                        height: 12,
                      ),
                      TextField(
                        obscureText: true,
                        textInputAction: TextInputAction.next,
                        style: const TextStyle(color: Colors.white),
                        keyboardType: TextInputType.visiblePassword,
                        cursorColor: Colors.grey,
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.lock_open_outlined,
                            color: Colors.grey,
                            size: 20,
                          ),
                          hintText: 'Create a Password',
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
                        height: 8,
                      ),
                      TextField(
                        obscureText: true,
                        textInputAction: TextInputAction.done,
                        style: const TextStyle(color: Colors.white),
                        keyboardType: TextInputType.visiblePassword,
                        cursorColor: Colors.grey,
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.confirmation_number_outlined,
                            color: Colors.grey,
                            size: 20,
                          ),
                          hintText: 'Re-enter password',
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
                        height: 5,
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
                            style: TextStyle(color: Colors.white, fontSize: 22),
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
                        height: 20,
                      ),
                      AuthButtons(
                          name: 'SIGN UP',
                          backColor: Theme.of(context).primaryColor,
                          onTapF: () {},
                          textColor: Colors.white),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text('Already Have an Account?',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                              fontWeight: FontWeight.w300)),
                      const Text('Login Here',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w300)),
                      const SizedBox(
                        height: 50,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
