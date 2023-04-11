import 'package:chat_school_app/screens/register_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../shaerd/compoanent/text_form_field.dart';
import '../shaerd/helper/show_snakbar.dart';
import '../shaerd/style/colors.dart';
import '../shaerd/style/constant.dart';
import 'package:chat_school_app/screens/chat_screen.dart';
import '../shaerd/compoanent/boutton.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);
static  String loginId ='login';

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  @override
  Widget build(BuildContext context) {
  
  var email;
  var password;
  var emailController=TextEditingController();
 GlobalKey<FormState> formKey=GlobalKey();
  var passwordController=TextEditingController();
    return ModalProgressHUD(
      inAsyncCall:isloading,
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: SafeArea(
          child:Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
              key:formKey ,
              child: ListView(
                
                children: [
                  kPrimaryHeight,
                 Image(image:AssetImage('assets/images/scholar.png',),
                 height: 100,),
                  Center(
                    child: Text(
                      "chat School",
                      style: TextStyle(
                        fontFamily:'Pacifico',
                        fontSize: 30,
                        color:Colors.white,
                      ),
                      
                      ),
                  ),
                 Text(
                  'login',
                  style: TextStyle(
                        fontSize: 30,
                        color:Colors.white,
                      ),
                  ),
                kPrimaryHeight,
                 intialtextForm(
                  validator: (String ?value){
                    if(value!.isEmpty){
                      return 'email must not be empty';
                    }
                  },
                  keyboardType:TextInputType.emailAddress,
                   controller: emailController,
                   labelText:'email',
                   prefixIcon: Icons.email,
                   onChanged: (data){
                    email=data;
                   }
                   ),
                    kPrimaryHeight,
                 intialtextForm(
                   validator: (value){
                    if(value!.isEmpty){
                      return 'password must not be empty';
                    }
                  },
                  keyboardType:TextInputType.visiblePassword,
                   controller: passwordController,
                   labelText:'password',
                   prefixIcon: Icons.lock,
                   suffixIcon:Icons.remove_red_eye,
                    onChanged: (data){
                    password=data;
                   }
                   ),
                  kPrimaryHeight,
            
            
                 intialBoutton(
                  textOnBoutton:'login',
                  onPressed: ()async{
                    if(
                      formKey.currentState!.validate()
                        ){
                         isloading=true;  
                          setState(() {
                            
                          });
                           try {
                      await loginUser(email, password);
                      SnakbarText(context,'singup Successfuly');  
                      Navigator.pushNamed(context,chatScreen.chatId,arguments:email); 
                        }
                    on FirebaseAuthException catch (ex) { 
                    if (ex.code=='user-not-found'){
                      SnakbarText(context,'user-not-found');
                    }else if(ex.code=='wrong-passwordl'){
                      SnakbarText(context,'wrong-password');
                  
               }}
               isloading=false;
               setState(() {
                 
               });
                 print(isloading);
                    }
                    }),
                
            
                  kPrimaryHeight,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
            
                    Text('you have a account?'),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context,'rigsterScreen');
                      },
                      child: Text('register now ',style: TextStyle(color: Colors.white),),
                    )
                    ],
                  )
                  ],
                ),
            ),
          )
           ),
      ),
    );
  
  }



  Future<void> loginUser(email, password) async {
     UserCredential user=await 
               FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password);
  }
}