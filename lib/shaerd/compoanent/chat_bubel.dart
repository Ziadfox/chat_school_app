import 'package:flutter/material.dart';

import '../../modles/massage_model.dart';
import '../style/colors.dart';

class chatbuble extends StatelessWidget {
  const chatbuble({
   required this.message
  });


final Message message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
       padding: EdgeInsets.only(
        left: 20,
        right:32,
        top:32,
        bottom:32
    
       ),
        margin: EdgeInsets.only(
          right: 32,
          top:10,
          bottom: 10,
          left: 10
        ),
        decoration: BoxDecoration(
          borderRadius:BorderRadius.only(
            topLeft:Radius.circular(32),
            topRight:Radius.circular(32),
            bottomRight:Radius.circular(32)
          ),
          color:kPrimaryColor,
          
        ),
        child: Text(message.message,
        style: TextStyle(
          color:Colors.white,
          fontSize:20,
        ),
        ),
      ),
    );
  }
}
class chatbubleForfrind extends StatelessWidget {
  const chatbubleForfrind({
   required this.message
  });


final Message message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
       padding: EdgeInsets.only(
        left: 20,
        right:32,
        top:32,
        bottom:32
    
       ),
        margin: EdgeInsets.only(
          right: 32,
          top:10,
          bottom: 10,
          left: 10
        ),
        decoration: BoxDecoration(
          borderRadius:BorderRadius.only(
            topLeft:Radius.circular(32),
            topRight:Radius.circular(32),
            bottomLeft:Radius.circular(32)
          ),
          color:Color(0xff006D84),
          
        ),
        child: Text(message.message,
        style: TextStyle(
          color:Colors.white,
          fontSize:20,
        ),
        ),
      ),
    );
  }
}