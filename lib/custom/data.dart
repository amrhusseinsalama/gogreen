import 'package:flutter/material.dart';
import 'package:gogreen/aboutus.dart';
import 'package:gogreen/cart.dart';
import 'package:gogreen/custom/custom.dart';
import 'package:gogreen/home.dart';
import 'package:gogreen/login.dart';
import 'package:gogreen/myAccount.dart';
import 'package:gogreen/myorders.dart';

List<ModelDrawer> mydrawer = [
  ModelDrawer("Home", Icons.home, const Home()),
  ModelDrawer("My Orders", Icons.list, const MyOrder()),
  ModelDrawer("Cart", Icons.shopping_cart_outlined, const Cart()),
  ModelDrawer("My Account", Icons.person, const MyAccount()),
  ModelDrawer("About Us", Icons.info, const AboutUs()),
  ModelDrawer("Login", Icons.login, const Login()),
];

List<Account> info = [
  Account(Icons.person, "Amr Hussein"),
  Account(Icons.mail, "amrhussein@gmail.com"),
  Account(Icons.phone_android, "01016248877"),
  Account(Icons.settings, "settings"),
  Account(Icons.live_help_outlined, "Help"),
];

List<String> protein = ["meat", "chiken", "beans", "cheese", "milk"];
List<String> carb = ["rice", "potato", "fruits", "vegetables", "bread"];
List<String> vitamins = ["vitamin a", "vitamin b", "vitamin c", "vitamin d", "vitamin e"];
List<String> supplements = ["whey protein", "creatine", "omega 3","mass gainer","pre workout"];
