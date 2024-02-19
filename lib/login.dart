import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        child: Image.asset(
                          'assets/images/login.png',
                          alignment: Alignment.bottomLeft,
                          height: 60.0,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        child: Image.asset(
                          'assets/images/SSA1.png',
                          alignment: Alignment.bottomRight,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                TextFormFielWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TextFormFielWidget extends StatefulWidget {
  @override
  _TextFormFielWidgetState createState() => _TextFormFielWidgetState();
}

class _TextFormFielWidgetState extends State<TextFormFielWidget> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: emailController,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: 'Masukkan email',
            labelText: 'Email',
            prefixIcon: Icon(Icons.email),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ),
        SizedBox(height: 16.0),
        TextFormField(
          controller: passwordController,
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'Masukkan password',
            labelText: 'Password',
            prefixIcon: Icon(Icons.lock),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ),
        SizedBox(height: 16.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {
              },
              child: Text(
                'Forgot Password ?',
                style: TextStyle(color: const Color.fromARGB(255, 5, 39, 67)),
              ),
            ),
          ],
        ),
        SizedBox(height: 16.0),
        ElevatedButton(
          onPressed: () {},
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              'Continue',
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          style: ElevatedButton.styleFrom(
            primary: const Color.fromARGB(255, 5, 39, 67),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ),
        SizedBox(height: 16.0),
        SizedBox(height: 10.0),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            children: [
              Expanded(
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  'or',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Expanded(
                child: Divider(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10.0),
        ElevatedButton(
          onPressed: () {},
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.apple, color: Colors.black),
                SizedBox(width: 8.0),
                Text(
                  'Login with Apple',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
            onPrimary: Colors.black,
            side: BorderSide(color: Colors.black),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ),
        SizedBox(height: 16.0),
        ElevatedButton(
          onPressed: () {},
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.facebook, color: Colors.black),
                SizedBox(width: 8.0),
                Text(
                  'Login with Facebook',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
            onPrimary: Colors.black,
            side: BorderSide(color: Colors.black),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ),
        SizedBox(height: 16.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Dont Have an Account?',
              style: TextStyle(fontSize: 12.0, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            TextButton(
              onPressed: () {
              },
              child: Text(
                'Sign Up',
                style: TextStyle(fontSize: 12.0, color: Colors.blue),
              ),
            ),
          ],
        ),
        SizedBox(height: 16.0),
        Row(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.all(10.0),
                child: Image.asset(
                  'assets/images/SSAKebalik.png',
                  height: 150.0,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
