import 'dart:ffi';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../stats/stats.dart';
import 'mainScreen.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var widgetList=[
    MainScreen(),
    statScreen(),
  ];
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(10)
        ),
        child: BottomNavigationBar(
            onTap: (value){
              setState(() {
                  index=value;
              });
            },
          items: [
            BottomNavigationBarItem(

              icon: Icon(Icons.home),
              label: 'Home'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.auto_graph_rounded),
                label: 'Stats'

            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: FloatingActionButton(
          onPressed: () {

          },
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              // shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(30), // Set border radius for rounded corners
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).colorScheme.primary,
                  Theme.of(context).colorScheme.secondary,
                  Theme.of(context).colorScheme.tertiary,
                ],
                transform: GradientRotation(pi / 4),
              ),
            ),
            child: Icon(Icons.add),
          ),
        ),
      ),
    body: (index==0)?MainScreen():statScreen()

    );
  }
}
