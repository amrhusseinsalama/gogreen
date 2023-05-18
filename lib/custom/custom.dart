import 'package:flutter/material.dart';
import 'package:gogreen/custom/data.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.icon, required this.text});

  final Icon icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
            border: InputBorder.none,
            suffixIcon: icon,
            suffixIconColor: const Color.fromARGB(255, 55, 129, 58),
            filled: true,
            fillColor: const Color.fromARGB(255, 238, 237, 237),
            hintTextDirection: TextDirection.rtl,
            hintStyle: const TextStyle(fontWeight: FontWeight.bold),
            hintText: text),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
AppBar CustomAppBar(
    {List<Widget>? actions,
    required String title,
    required TextStyle style,
    Widget? leading,
    PreferredSizeWidget? bottom}) {
  return AppBar(
      bottom: bottom,
      iconTheme: const IconThemeData(color: Colors.green),
      elevation: 0,
      backgroundColor: Colors.white,
      actions: actions,
      centerTitle: true,
      title: Text(
        title,
        style: customtext(Colors.green),
      ),
      leading: leading);
}

TextStyle customtext(Color color) {
  return TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: color,
  );
}

class Customelevatedbutton extends StatelessWidget {
  const Customelevatedbutton({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            textStyle:
                const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            padding: const EdgeInsets.symmetric(horizontal: 30),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40))),
        onPressed: () {},
        child: Text(
          text,
          style: customtext(Colors.white),
        ));
  }
}

class CustomGridview extends StatelessWidget {
   const CustomGridview({super.key, required this.count, required this.name});
final int count;
final List name;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.8,
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemCount: count,
        itemBuilder: (BuildContext context, int i) {
          return Column(
            children: [
              Card(
                child: Image.asset("img/${name[i]}.jpg"),
              ),
              Text(name[i],style: customtext(Colors.green)),
            ],
          );
        },
      ),
    );
  }
}

// ignore: non_constant_identifier_names
CustomTab(String? text) {
  return Tab(
    icon: SizedBox(height: 40, width: 40, child: Image.asset("img/$text.png")),
    child: Text(
      "$text",
      style: const TextStyle(color: Colors.green),
    ),
  );
}

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(255, 235, 240, 236),
      child: Column(children: [
        Container(
            margin: const EdgeInsets.only(bottom: 30, top: 30),
            width: 200,
            height: 200,
            child: const CircleAvatar(
              backgroundColor: Colors.green,
              child: Text(
                "Anti Fat",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    color: Colors.white),
              ),
            )),
        Flexible(
            child: ListView.builder(
          itemCount: mydrawer.length,
          itemBuilder: (context, i) {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                elevation: 5,
                child: ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return mydrawer[i].navigator;
                      },
                    ));
                  },
                  title: Text(mydrawer[i].title,style: customtext(Colors.green),),
                  trailing: Icon(mydrawer[i].icon,color: Colors.green),
                ),
              ),
            );
          },
        ))
      ]),
    );
  }
}

class ModelDrawer {
  String title;
  Widget navigator;
  IconData icon;
  ModelDrawer(this.title, this.icon, this.navigator);
}

class Account {
  String title;
  IconData icon;
  Account(this.icon, this.title); 
}
