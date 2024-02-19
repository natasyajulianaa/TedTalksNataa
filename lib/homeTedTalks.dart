import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 200.0,
            ),
            Center(
              child: Text(
                'TalkDM',
                style: GoogleFonts.hurricane(
                  fontWeight: FontWeight.bold,
                  fontSize: 74.0,
                ),
              ),
            ),
            Center(
              child: Image.asset('assets/images/iconchat.png',
                  height: 270.0, width: 270.0),
            ),
            SizedBox(height: 20.0),
            Center(
              child: Text(
                'Welcome To TedTalks',
                style: GoogleFonts.ibarraRealNova(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Center(
                child: Text(
                  'Enjoy the excitement of talking to anyone for free, only on TedTalks!',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.ibarraRealNova(
                    color: Colors.grey,
                    fontSize: 16.0,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
