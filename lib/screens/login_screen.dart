import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              width: double.infinity,
              child: Center(
                child: Text(
                  'Sign in To your Account',
                  style: TextStyle(
                      fontFamily: 'Ridley_Grotesk',
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
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Ridley_Grotesk',
                              fontSize: 22),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        SizedBox(
                          width: 150,
                          child: Divider(color: Colors.white, thickness: 2),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children:const [
                        SizedBox(child: Icon(Icons.facebook,color: Colors.white,size: 58),),
                        SizedBox(child: Icon(Icons.g_mobiledata,color: Colors.white,size: 58,),),
                        SizedBox(child: Icon(Icons.apple,color: Colors.white,size: 58,),),
                      ],
                    )
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
