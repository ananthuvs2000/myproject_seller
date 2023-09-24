import 'package:flutter/material.dart';

class BuildTextformField extends StatelessWidget {
  BuildTextformField({required this.icon,required this.text,super.key});
  Icon icon;
  String text;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
                        decoration: InputDecoration(
                          enabledBorder:OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          focusedBorder:OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          prefixIcon: icon,
                          hintText: text,
                          fillColor:Colors.white,
                          filled: true,

                        ),
                      );
  }
}