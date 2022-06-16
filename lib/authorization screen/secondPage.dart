import 'package:flutter/material.dart';
import 'appTextField.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Назад'),
        ),
        Container(
          color: Colors.amber,
          height: 200,
          width: 150,
          child: Text('Hochesh Nazad'),
        ),
      ],
    );
  }
}
