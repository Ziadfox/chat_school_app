import 'package:flutter/material.dart';

Widget intialtextForm({
required TextInputType keyboardType,
required TextEditingController controller,
String?labelText,
String?hintText,
IconData?prefixIcon,
IconData?suffixIcon,
void Function(String)?onChanged,
String? Function(String?)?validator
}
)=>TextFormField(
validator:validator ,
onChanged:onChanged ,
keyboardType:keyboardType ,
controller:controller ,
decoration: InputDecoration(
  labelText:labelText,
  hintText:hintText,
  prefixIcon: Icon(prefixIcon),
  suffixIcon: Icon(suffixIcon), 
  border: OutlineInputBorder(borderSide: BorderSide(color:Colors.white)),
  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color:Colors.white)) 
),
);

