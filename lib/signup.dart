import 'package:flutter/material.dart';
import 'package:gogreen/custom/custom.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: CustomAppBar(
          actions: [
            IconButton(
                
                onPressed: () {},
                icon: const Icon(Icons.arrow_forward))
          ],
          title:
            "انشاء حساب",
            style: customtext(Colors.green),
          
          leading: Container(
            margin: const EdgeInsets.only(right: 8,top: 5),
            child: Text(
              "تخطى",
              style: customtext(Colors.black),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Image.asset("img/regis.png"),
            const Padding(
                padding:
                    EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 10),
                child:
                    CustomTextField(icon: Icon(Icons.person), text: "الاسم")),
            const Padding(
                padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: CustomTextField(
                    icon: Icon(Icons.email), text: "البريد الالكترونى")),
            const Padding(
                padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: CustomTextField(
                    icon: Icon(Icons.phone), text: "رقم الهاتف")),
            const Padding(
                padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: CustomTextField(
                    icon: Icon(Icons.visibility_off), text: "كلمه المرور")),
            Row(
              children: [
                Checkbox(
                    value: check,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    activeColor: Colors.green,
                    onChanged: (val) {
                      setState(() {
                        check = val!;
                      });
                    }),
                Text("اوافق على ", style: customtext(Colors.black)),
                const SizedBox(
                  width: 10,
                ),
                Text("الشروط والاحكام", style: customtext(Colors.green))
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              height: 40,
              width: 200,
              child: const Customelevatedbutton(text: "انشاء حساب")
            ),
            Container(
              margin: const EdgeInsets.only(top: 10,right: 90),
              child: Row(
                children: [
                  Text("لديك حساب؟", style: customtext(Colors.black)),
                  const SizedBox(
                    width: 25,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed("login");
                    },
                    child: Text("تسجيل الدخول", style: customtext(Colors.green)))
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
