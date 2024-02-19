import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
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
                ],
              ),
              SizedBox(height: 20.0),
              TextFormWidget(),
              SizedBox(height: 20.0),
              RadioButtonWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class TextFormWidget extends StatefulWidget {
  @override
  _TextFormWidgetState createState() => _TextFormWidgetState();
}

class _TextFormWidgetState extends State<TextFormWidget> {
  final textController = TextEditingController();
  final numberController = TextEditingController();
  DateTime selectedDate = DateTime.now();

  @override
  void dispose() {
    textController.dispose();
    numberController.dispose();
    super.dispose();
  }

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final dateFormatted = DateFormat('dd MMMM yyyy').format(selectedDate);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Sign Up!',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30.0),
        ),
        SizedBox(height: 30.0),
        TextFormField(
          controller: textController,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            hintText: 'Masukkan nama lengkap',
            labelText: 'Nama Lengkap',
            border: OutlineInputBorder(),
          ),
          onChanged: (value) {
            setState(() {});
          },
        ),
        SizedBox(height: 16.0),
        TextFormField(
          controller: numberController,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            hintText: 'Masukkan username',
            labelText: 'Username',
            border: OutlineInputBorder(),
          ),
          onChanged: (value) {
            setState(() {});
          },
        ),
        SizedBox(height: 16.0),
        Text('Jenis Kelamin yang dipilih: "-"'),
        RadioButtonWidget(),
        SizedBox(height: 16.0),
        Text('Tanggal Lahir: $dateFormatted'),
        ElevatedButton(
          onPressed: () => selectDate(context),
          child: Text('Pilih Tanggal Lahir'),
        ),
      ],
    );
  }
}

class RadioButtonWidget extends StatefulWidget {
  const RadioButtonWidget({Key? key}) : super(key: key);

  @override
  _RadioButtonWidgetState createState() => _RadioButtonWidgetState();
}

class _RadioButtonWidgetState extends State<RadioButtonWidget> {
  final items = ['Laki Laki', 'Perempuan'];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map(
            (item) => RadioListTile<String>(
              title: Text(item),
              value: item,
              groupValue: selectedValue,
              onChanged: (value) {
                setState(() {
                  selectedValue = value;
                });
              },
            ),
          )
          .toList(),
    );
  }
}
