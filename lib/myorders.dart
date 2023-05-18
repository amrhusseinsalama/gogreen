import 'package:flutter/material.dart';
import 'package:gogreen/custom/custom.dart';

class MyOrder extends StatefulWidget {
  const MyOrder({super.key});

  @override
  State<MyOrder> createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "My Orders", style: customtext(Colors.green)),
      drawer: const CustomDrawer(),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.green),
                  borderRadius: BorderRadius.circular(5)),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(5)),
                    height: 40,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "No.of odrder:",
                            style: customtext(Colors.white),
                          ),
                          Text(
                            "Time",
                            style: customtext(Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "Total Cost",
                      style: customtext(Colors.black),
                    ),
                    subtitle: Text(
                      "order done",
                      style: customtext(Colors.orange),
                    ),
                    trailing: Image.asset("img/paid.png"),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
