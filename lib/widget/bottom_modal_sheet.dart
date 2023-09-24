import 'package:flutter/material.dart';
import 'package:myprojectseller/widget/textformfield.dart';
class ItemModalSheet extends StatefulWidget {
  const ItemModalSheet({super.key});

  @override
  State<ItemModalSheet> createState() => _ItemModalSheetState();
}

class _ItemModalSheetState extends State<ItemModalSheet> {
  bool firstValue=false;
  bool secondValue=false;
  @override
  Widget build(BuildContext context) {
    return BottomSheet(onClosing: () {
  
}, builder: (context)
 {
  return Container(
    color: Colors.grey.shade300,
    height: 500,
    width: 200,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          BuildTextformField(icon: Icon(Icons.fastfood), text: 'eg:Biriyani'),
           Row(
             children: [
               Text('Veg'),
               Checkbox(
        value: firstValue, // Use the variable to track the checkbox state
        onChanged: (newValue) {
          setState(() {
                firstValue=newValue!;
          });
        }),
       
             ],
           ),
           Row(
             children: [
               Text('Non Veg'),
                Checkbox(
        value: secondValue, // Use the variable to track the checkbox state
        onChanged: (newValue) {
          setState(() {
                secondValue=newValue!;
          });
        }),
             ],
           ),
        
        ],
      ),
    ),
  );
},);
  }
}