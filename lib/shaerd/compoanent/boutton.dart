import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget intialBoutton(
{
 required String textOnBoutton,
required void Function()onPressed
}
)=>Container(
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius:BorderRadius.circular(10)
  ),
  child:   TextButton(
  
    onPressed:onPressed,  
  
     child: Text(textOnBoutton,),),
);
