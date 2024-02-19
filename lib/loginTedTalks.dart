import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mencoba/homeTedTalks.dart';
import 'package:mencoba/signupTedTalks.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscure = true;

  void _toggleObscure() {
    setState(() {
      _isObscure = !_isObscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(250, 227, 146, 1),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 100.0),
            Center(
              child: Text(
                'Login',
                style: GoogleFonts.ibarraRealNova(
                  fontWeight: FontWeight.w400,
                  fontSize: 50.0,
                  color: Color.fromRGBO(26, 93, 26, 1),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: GoogleFonts.ibarraRealNova(),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color.fromRGBO(26, 93, 26, 1)),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              obscureText: _isObscure,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: GoogleFonts.ibarraRealNova(),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color.fromRGBO(26, 93, 26, 1)),
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                      _isObscure ? Icons.visibility : Icons.visibility_off),
                  onPressed: _toggleObscure,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                minimumSize: Size(600.0, 50.0),
              ),
              child: Text(
                'Login',
                style: GoogleFonts.ibarraRealNova(
                  color: Colors.yellow,
                  fontSize: 20.0,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Or Login With',
              style: GoogleFonts.ibarraRealNova(
                color: Colors.grey,
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 20.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    minimumSize: Size(600.0, 50.0),
                  ),
                  icon: Icon(Icons.facebook, color: Colors.blue),
                  label: Text(
                    'Login with Facebook',
                    style: GoogleFonts.ibarraRealNova(
                      color: Colors.grey,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    minimumSize: Size(600.0, 50.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/gugel.png', 
                        height: 24.0,
                        width: 24.0,
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        'Login with Google',
                        style: GoogleFonts.ibarraRealNova(
                          color: Colors.grey,
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  'Don\'t have an account?',
                  style: GoogleFonts.ibarraRealNova(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignupScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    minimumSize: Size(600.0, 50.0),
                  ),
                  child: Text(
                    'Sign Up',
                    style: GoogleFonts.ibarraRealNova(
                      color: Colors.yellow,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
