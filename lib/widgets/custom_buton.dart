import 'package:flutter/material.dart';
class CustomButon extends StatelessWidget {
   CustomButon({super.key ,required this.text,required this.onPressed});
VoidCallback onPressed;
 final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(style:ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        minimumSize:Size(350,70),primary:Colors.blue),onPressed: onPressed, child: Text(text));
  }
}
