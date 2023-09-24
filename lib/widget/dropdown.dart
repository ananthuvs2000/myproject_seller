import 'package:flutter/material.dart';

class DropdownWidget extends StatefulWidget {
  const DropdownWidget({super.key});

  @override
  State<DropdownWidget> createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  String? valueChoose;
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: DropdownButton(
          value: valueChoose,
        items: [
                DropdownMenuItem(
                  value: '1',
                  child: Text('1'),
                ),
                DropdownMenuItem(
                  value: '2',
                  child: Text('2'),
                ),
                DropdownMenuItem(
                  value: '3',
                  child: Text('3'),
                ),
                DropdownMenuItem(
                  value: '4',
                  child: Text('4'),
                ),
                DropdownMenuItem(
                  value: '5',
                  child: Text('5'),
                ),
                DropdownMenuItem(
                  value: '6',
                  child: Text('6'),
                ),
                DropdownMenuItem(
                  value: '7',
                  child: Text('7'),
                ),
              ],
              onChanged: (newValue) {
                setState(() {
                  valueChoose=newValue;
                });
              },),
    );
  }
}