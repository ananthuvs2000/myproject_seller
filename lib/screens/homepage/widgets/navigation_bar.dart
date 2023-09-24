import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget buildNavigationBar()=> BottomAppBar(
  child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      IconButton(onPressed: () {
        
      }, icon: Icon(Icons.home_rounded)),
      IconButton(onPressed: () {
        
      }, icon: Icon(Icons.settings)),
    ],
  ),
);