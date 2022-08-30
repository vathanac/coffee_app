// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:coffee_app/coffee_tile.dart';
import 'package:coffee_app/coffee_type.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePagee extends StatefulWidget {
  const HomePagee({Key? key}) : super(key: key);

  @override
  State<HomePagee> createState() => _HomePageeState();
}

class _HomePageeState extends State<HomePagee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey.shade900,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Icon(Icons.menu),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 25),
              child: Icon(Icons.person),
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                "Find the best coffee for you",
                style: GoogleFonts.bebasNeue(
                  fontSize: 56,
                ),
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Find your coffee',
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.grey.shade400,
                  )),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade600,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CoffeeType(coffeeType: 'Latte'),
                  CoffeeType(coffeeType: 'Cappuccino'),
                  CoffeeType(coffeeType: 'Brown'),
                  CoffeeType(coffeeType: 'IceCoffee'),
                ],
              ),
            ),
            SizedBox(height: 10),
            Expanded(
                child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CoffeeTile(
                  coffeeImage: 'lib/assets/latte.jpg',
                  coffeeName: 'Latte',
                  coffeePrice: '4.5',
                ),
                CoffeeTile(
                  coffeeImage: 'lib/assets/cappuccino.jpg',
                  coffeeName: 'Cappuccino',
                  coffeePrice: '4.2',
                ),
                CoffeeTile(
                  coffeeImage: 'lib/assets/milk.jpg',
                  coffeeName: 'Brwon',
                  coffeePrice: '4.7',
                ),
              ],
            ))
          ],
        ));
  }
}
