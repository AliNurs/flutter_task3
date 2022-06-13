import 'package:flutter/material.dart';

void main() => runApp(ScreenTextField());

class ScreenTextField extends StatefulWidget {
  const ScreenTextField({Key? key}) : super(key: key);

  @override
  State<ScreenTextField> createState() => _ScreenTextFieldState();
}

class _ScreenTextFieldState extends State<ScreenTextField> {
  String text1 = "";
  String text2 = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("TextField"),
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Email",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 16),
              TextField(
                onChanged: (text) {
                  text1 = text;
                  setState(() {});
                },
                decoration: const InputDecoration(
                    label: Text("Ведите логин"),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue))),
              ),
              SizedBox(height: 20),
              const Text(
                "Password",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 16),
              TextField(
                onChanged: (text) {
                  text2 = text;
                  setState(() {});
                },
                decoration: const InputDecoration(
                  label: Text("Ведите пароль"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(34),
                      left: Radius.elliptical(12, 12),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              RichText(
                text: TextSpan(
                  text: 'TextField 1- ',
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                  children: [TextSpan(text: '$text1')],
                ),
              ),
              SizedBox(height: 20),
              RichText(
                text: TextSpan(
                  text: 'TextField 2- ',
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                  children: [TextSpan(text: '$text2')],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
