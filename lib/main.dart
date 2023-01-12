import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding/utils/fade_animation.dart';
import 'package:flutter_onboarding/utils/system_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //
  // @afifcodes
  // afifcodes.vercel.app/flutter
  //

  @override
  Widget build(BuildContext context) {
    systemUi();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            const SizedBox(
              height: 12,
            ),
            FadeAnimation(
              delay: 0,
              child: Image.asset(
                'assets/images/character.png',
                width: double.infinity,
              ),
            ),
            const Spacer(),
            const SizedBox(
              height: 12,
            ),
            FadeAnimation(
              delay: 200,
              child: Text(
                'Connect with others',
                style: GoogleFonts.manrope(
                    fontSize: 24, fontWeight: FontWeight.w800),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            FadeAnimation(
              delay: 400,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(99)),
                child: const Icon(
                  Iconsax.tick_square,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            FadeAnimation(
              delay: 400,
              child: Text('Choose your tutor',
                  style: GoogleFonts.manrope(fontWeight: FontWeight.w800)),
            ),
            FadeAnimation(
              delay: 400,
              child: Text('Learn from the best professor in the field',
                  style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w700,
                      fontSize: 10,
                      color: Colors.grey)),
            ),
            const SizedBox(
              height: 6,
            ),
            FadeAnimation(
              delay: 400,
              child: Text('Meet other students',
                  style: GoogleFonts.manrope(fontWeight: FontWeight.w800)),
            ),
            FadeAnimation(
              delay: 400,
              child: Text('Socialize and share the experience with others',
                  style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w700,
                      fontSize: 10,
                      color: Colors.grey)),
            ),
            const SizedBox(
              height: 24,
            ),
            FadeAnimation(
              delay: 800,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/');
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                  decoration: BoxDecoration(
                      color: Colors.green[400],
                      borderRadius: BorderRadius.circular(16)),
                  child: Text(
                    'Get Started',
                    style: GoogleFonts.manrope(
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            FadeAnimation(
              delay: 1000,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Already have an account? ',
                      style: GoogleFonts.manrope(
                          fontWeight: FontWeight.w700,
                          fontSize: 10,
                          color: Colors.grey)),
                  Text('Login here',
                      style: GoogleFonts.manrope(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w700,
                          fontSize: 10,
                          color: Colors.grey)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
