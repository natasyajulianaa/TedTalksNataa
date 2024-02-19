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
         // padding: EdgeInsets.all(70.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Image.asset(
                  'assets/images/SSA1.png',
                  height: 250.0,
                  alignment: Alignment.bottomRight,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 100.0),
              Container(
                child: Image.asset(
                  'assets/images/SSA.png',
                  height: 150.0,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 200.0),
              ElevatedButton(
                onPressed: () {},
                child: Text('Login',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 5, 39, 67),
                  minimumSize: Size(80.0, 50.0),
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {},
                child: Text('Sign Up',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold)),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.blue,
                  side: BorderSide(color: const Color.fromARGB(255, 5, 39, 67)),
                  minimumSize: Size(30.0, 50.0),
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Versi 1.0.0',
                style: TextStyle(fontSize: 12.0, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
