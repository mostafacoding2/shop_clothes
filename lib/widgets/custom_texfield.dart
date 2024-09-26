import'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
   CustomTextField({required this.hintText,required this.onchanged,super.key,required this.textInputType});
  final String hintText;
  Function (String )onchanged;
   TextInputType? textInputType;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(right: 10,left: 10,top:16,bottom: 5),
      child: Center(
        child: TextFormField(
          onChanged: onchanged,
keyboardType: textInputType,


          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color:Colors.black,fontSize: 25),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16)
        )
          ),

        ),
      ),
    );
  }
}
