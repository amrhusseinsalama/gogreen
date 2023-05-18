import 'package:flutter/material.dart';
import 'package:gogreen/custom/custom.dart';
import 'package:gogreen/custom/data.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Cart", style: customtext(Colors.green)),
      drawer: const CustomDrawer(),
      body: ListView.builder(
        itemCount: supplements.length,
        itemBuilder: (context, i) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(width: 0.5, color: Colors.green)),
              alignment: Alignment.center,
              height: 120,
              child: ListTile(
                leading: Text(
                  "Price",
                  style: customtext(Colors.black),
                ),
                title: Text(
                  "Amount:",
                  style: customtext(Colors.red),
                ),
                subtitle: Text(
                  supplements[i],
                  style: customtext(Colors.green),
                ),
                trailing: Image.asset("img/${supplements[i]}.jpg"),
              ),
            ),
          );
        },
      ),
    );
  }
}
