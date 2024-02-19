import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mencoba/loginTedTalks.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(250, 227, 146, 1),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 200.0),
              Center(
                child: Text(
                  'TalkDM',
                  style: GoogleFonts.hurricane(
                    fontWeight: FontWeight.w400,
                    fontSize: 74.0,
                  ),
                ),
              ),
              SizedBox(height: 60.0),
              Center(
                child: Image.asset('assets/images/icon.png',
                    height: 160.0, width: 200.0),
              ),
              SizedBox(height: 40.0),
              Center(
                child: Text(
                  'Let\'s talk with new friends',
                  style: GoogleFonts.ibarraRealNova(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  LoginPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    minimumSize: Size(300.0, 50.0),
                  ),
                  child: Text(
                    'Get Started',
                    style: GoogleFonts.ibarraRealNova(
                      color: Colors.yellow,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}

