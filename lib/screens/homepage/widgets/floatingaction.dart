import 'package:flutter/material.dart';
import 'package:myprojectseller/screens/cartpage/view/cartpage.dart';

class BuildFloatingButton extends StatelessWidget {
  const BuildFloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(onPressed: () {
      
    },
    child: Icon(Icons.shopping_cart_outlined),
    );
  }
}