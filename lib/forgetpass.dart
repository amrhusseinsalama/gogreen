import 'package:flutter/material.dart';
import 'package:gogreen/custom/custom.dart';

class Forgetpass extends StatefulWidget {
  const Forgetpass({super.key});

  @override
  State<Forgetpass> createState() => _ForgetpassState();
}

class _ForgetpassState extends State<Forgetpass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_forward,))
          ],
          title: "نسيت كلمه المرور",
          style: customtext(Colors.green)),
      body: Column(
        children: [
          Image.asset("img/pass.png"),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CustomTextField(
                icon: Icon(Icons.mail), text: "البريد الالكترونى"),
          ),
          const SizedBox(height: 100,),
          const Customelevatedbutton(text: "ارسال البريد")
        ],
      ),
    );
  }
}
