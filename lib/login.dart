import 'package:flutter/material.dart';
import 'package:gogreen/custom/custom.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: CustomAppBar(
            title: "تسجيل الدخول",
            leading: Container(
              margin: const EdgeInsets.only(right: 8, top: 5),
              child: Text(
                "تخطى",
                style: customtext(Colors.black),
              ),
            ),
            style: customtext(Colors.green)),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("img/login.png"),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child:
                    CustomTextField(icon: Icon(Icons.phone), text: "رقم الهاتف"),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: CustomTextField(
                    icon: Icon(Icons.visibility_off), text: "كلمه المرور"),
              ),
              Container(
                  margin: const EdgeInsets.only(right: 200),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed("pass");
                    },
                    child: const Text(
                      "هل نسيت كلمه المرور؟",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.green),
                    ),
                  )),
            Container(
                margin: const EdgeInsets.only(top: 25),
                height: 40,
                width: 200,
                child: const Customelevatedbutton(text: "تسجيل دخول")
              ),
              Container(
                margin: const EdgeInsets.only(top: 20,right: 60),
                child: Row(children: [
              Text("ليس لديك حساب؟",style: customtext(Colors.black),),
              const SizedBox(width: 25,),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed("signup");
                },
                child: Text("انشاء حساب جديد",style: customtext(Colors.green),))
                          ],),
              )
        
            ],
          ),
        ),
      ),
    );
  }
}
