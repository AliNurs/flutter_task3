import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'secondPage.dart';

class AppTextField extends StatelessWidget {
  const AppTextField(
      {Key? key,
      required this.controller,
      required this.onChanged,
      required this.title,
      this.keyboardType = TextInputType.text,
      this.isSecondText = false})
      : super(key: key);

  final TextEditingController controller;
  final Function onChanged;
  final String title;
  final TextInputType keyboardType;
  final bool isSecondText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            TextButton(
              autofocus: isSecondText,
              onPressed: () {},
              child: Text("Fogot Password"),
            )
          ],
        ),
        SizedBox(
          height: 12,
        ),
        SizedBox(
          height: 95,
          child: TextField(
            onChanged: (text) {
              onChanged(text);
              // setState(() {});
            },
            controller: controller,
            keyboardType:
                title == 'Email' ? TextInputType.text : TextInputType.number,
            decoration: const InputDecoration(
              label: Text("Ведите"),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(34),
                  left: Radius.elliptical(12, 12),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
