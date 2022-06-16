import 'package:flutter/material.dart';
import 'package:flutter_task3/authorization%20screen/appTextField.dart';
import 'package:flutter_task3/authorization%20screen/secondPage.dart';

void main() => runApp(
      ScreenTextField(),
    );

class ScreenTextField extends StatefulWidget {
  const ScreenTextField({Key? key}) : super(key: key);

  @override
  State<ScreenTextField> createState() => _ScreenTextFieldState();
}

class _ScreenTextFieldState extends State<ScreenTextField> {
  String email = "nnurs.kgg@gmail.com";
  String password = "123123";

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

//Всегда должны dispose Отключает контроллера после перехода в другого экрана иначе он продолжаеть жить и жрает РЕСУРС-ОЗУ
  // @override
  // void dispose() {
  //   emailController.dispose();
  //   passwordController.dispose();
  //   super.dispose();
  // }

//
  // @override
  // void initState() { Сохрянает состояние
  //   ListenerToController();
  //   super.initState();
  // }
  // void ListenerToController() {
  //   emailController.addListener(() { Он дает что введено в контроллоре
  //     text1 = emailController.text;
  //     text2 = emailController.text;
  //     setState(() {});
  //   });
  // }

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
              SizedBox(height: 16),
              AppTextField(
                title: "Email",
                controller: emailController,
                onChanged: (text) {},
              ),

              AppTextField(
                //    keyboardType: TextInputType.number,
                isSecondText: true,
                title: "Password",
                controller: passwordController,
                onChanged: (text) {},
              ),

              //

              // RichText(
              //   text: TextSpan(
              //     text: 'TextField 1- ',
              //     style: const TextStyle(
              //         color: Colors.black,
              //         fontSize: 16,
              //         fontWeight: FontWeight.bold),
              //     children: [TextSpan(text: '$text1')],
              //   ),
              // ),
              // SizedBox(height: 20),
              // RichText(
              //   text: TextSpan(
              //     text: 'TextField 2- ',
              //     style: const TextStyle(
              //         color: Colors.black,
              //         fontSize: 16,
              //         fontWeight: FontWeight.bold),
              //     children: [TextSpan(text: '$text2')],
              //   ),
              // ),
              //

              SizedBox(
                height: 60,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (emailController.text == email &&
                        passwordController.text == password) {
                      print('You are Succeful authorized');

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SecondPage(),
                        ),
                      );
                    } else if (emailController.text == email &&
                        passwordController.text != password) {
                      print('Error Password');
                    } else if (passwordController.text == password &&
                        emailController.text != email) {
                      print('Error Email');
                    } else {
                      print('Введите заново или другой почту!');
                    }
                  },
                  child: const Text(
                    'Log in',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
