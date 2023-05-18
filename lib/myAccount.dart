// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:gogreen/custom/custom.dart';
import 'package:gogreen/custom/data.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({super.key});

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_rounded,
              color: Colors.green,
            )),
      ], title: "My Account", style: customtext(Colors.green)),
      drawer: const CustomDrawer(),
      body: Container(
        margin: const EdgeInsets.only(top: 20),
        alignment: Alignment.center,
        child: Column(
          children: [
            const CircleAvatar(
              backgroundColor: Colors.green,
              radius: 50,
              child: Text("A",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold)),
            ),
            const SizedBox(
              height: 30,
            ),
            Flexible(
              child: ListView.builder(
                itemCount: info.length,
                itemBuilder: (context, i) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ListTile(
                      tileColor: const Color(0xFFE0EEFC),
                      title: Text(info[i].title),
                      trailing: Icon(info[i].icon),
                    ),
                  );
                },
              ),
            ),
            Container(
                margin: const EdgeInsets.only(bottom: 100),
                child: const Customelevatedbutton(text: "Edit Account"))
          ],
        ),
      ),
    );
  }
}
