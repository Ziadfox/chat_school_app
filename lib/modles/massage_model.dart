import 'package:chat_school_app/shaerd/style/constant.dart';

class Message {
  final String message;
 final String id;
  Message(this.message, this.id);

 factory Message.fromJson( jsonData){
  return Message(jsonData[KMassage],jsonData['id']);
 }
  
}