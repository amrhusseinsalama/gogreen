import 'package:flutter/material.dart';
import 'package:gogreen/custom/custom.dart';
import 'package:gogreen/custom/data.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: CustomAppBar(
            bottom: TabBar(
                indicatorWeight: 8,
                indicator: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Color(0xffbbdefb),
                ),
                isScrollable: true,
                tabs: [
                  CustomTab("proteins"),
                  CustomTab("carb"),
                  CustomTab("vitamins"),
                  CustomTab("supplements"),
                ]),
            title: "الرئيسيه",
            style: customtext(Colors.green)),
        drawer: const CustomDrawer(),
        body: TabBarView(children: [
          CustomGridview(count: protein.length, name: protein),
          CustomGridview(count: carb.length, name: carb),
          CustomGridview(count: vitamins.length, name: vitamins),
          CustomGridview(count: supplements.length, name: supplements),
        ]),
      ),
    );
  }
}
