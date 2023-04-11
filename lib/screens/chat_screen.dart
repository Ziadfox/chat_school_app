import 'package:chat_school_app/shaerd/style/colors.dart';
import 'package:chat_school_app/shaerd/style/constant.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../modles/massage_model.dart';
import '../shaerd/compoanent/chat_bubel.dart';

class chatScreen extends StatelessWidget {
static String chatId='chat';
final faierStore=FirebaseFirestore.instance;
CollectionReference messages =FirebaseFirestore.instance.collection(KMassagesCollaction);
String? massageText;
TextEditingController controller=TextEditingController();
final _controller=ScrollController();
  @override
  Widget build(BuildContext context) {
  String email=  ModalRoute.of(context)!.settings.arguments as String;
    String textChat='bllllblllbllllllll';
    return StreamBuilder<QuerySnapshot>(
      stream: messages.orderBy(kCreatedtime,descending: true).snapshots(),
      builder:(context,snapshot)
      
      {
      
        if (snapshot.hasData){
          List<Message>messagesList=[];
          for(int i=0;i<snapshot.data!.docs.length;i++){
            messagesList.add(Message.fromJson(snapshot.data!.docs[i]));
          }
          print(messagesList);
            return
        
         Scaffold(
      
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        automaticallyImplyLeading: false,
        title:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(kPrimaryLogo,
            height: 50,
            ),
            Text('Chat'
              
            )
          ],
        ),
      ),
      body: Column(
        children:[  
           Expanded(
             child: ListView.builder(
              reverse: true,
              controller: _controller,
              itemCount: messagesList.length,
                     physics:BouncingScrollPhysics(),
                     itemBuilder:(context,index){
                     return messagesList[index].id==email? 
                     chatbuble(message:messagesList[index]):chatbubleForfrind(message:messagesList[index]);
                   }),
           ),
           Padding(
             padding: const EdgeInsets.only(
              top:10,
              bottom:3,
              right: 6,
              left: 6,
             ),
             child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                enabledBorder:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: kPrimaryColor,
                  )
                ),
                suffixIcon:IconButton(onPressed: (){
                  
                  
                }, icon:Icon(Icons.send,color: kPrimaryColor,))
              ,hintText:'send massage'
              ),
              onFieldSubmitted: (data){
                controller.clear();
                _controller.animateTo(0,
                 duration:Duration(milliseconds:500 ), curve:Curves.bounceIn);
               massageText=data;
              faierStore.collection(KMassagesCollaction).add({
                'massage':massageText,
                'createdTime':DateTime.now(),
                'id':email,
              });
              },
             ),
           )
           ]
      )
    
    );
      
        }else{return Text('loading.....');}
      } );
  }

   
}

