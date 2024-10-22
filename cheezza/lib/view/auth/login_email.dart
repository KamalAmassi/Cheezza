import 'package:cheezza/model/login/login_model.dart';
import 'package:cheezza/model/login/register.dart';
import 'package:cheezza/view/auth/login.dart';
import 'package:cheezza/view/home_page/home.dart';
import 'package:flutter/material.dart';
import 'package:cheezza/model/size.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class login_email extends StatefulWidget {
  const login_email({super.key});

  @override
  State<login_email> createState() => _login_emailState();
}

// ignore: camel_case_types
class _login_emailState extends State<login_email> {
  @override
  Widget build(BuildContext context) {
    bool val = false;
    Size size = Size(context);
    return Scaffold(
      body: Column(children: [
        Expanded(
            flex: 1,
            child: login_model(size.width)
        ),
        const Center(child: Text("Welcome Back",style: TextStyle(color: Colors.black,fontSize: 20),),),
        const Center(child: Text("Sign in to your account",style: TextStyle(color: Colors.black38,fontSize: 20),),),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(children: [
            TextFormField(
              keyboardType: TextInputType.phone,
              decoration:const InputDecoration(
                hintText: "Phone Number",
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.phone,color: Colors.red,),
                focusColor: Colors.red,
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),

              ),

            ),

            const SizedBox(height: 10,),

            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              decoration:const InputDecoration(
                hintText: "Password",
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.lock,color: Colors.red,),
                focusColor: Colors.red,
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),

              ),

            ),

            Container(
              width: size.width,
              height: size.height/18,
              margin:const EdgeInsets.only(left: 20,right: 20,top: 30),
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: MaterialButton(onPressed: (){
                Get.to(()=>const home());
              },child:const Text("Next",style: TextStyle(color: Colors.white,fontSize: 19),),),
            )

          ],),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 15,right: 15),
          child: Row(children: [
            Expanded(child: Row(children: [
              Switch(value: val, onChanged: (value) {
                setState(() {
                   val = value ;
                });
              },
              activeColor: Colors.red,
              ),
              const Text("Save Me",style: TextStyle(fontSize: 15,color: Colors.black38),)
            ],)),


            Expanded(child: MaterialButton(onPressed: (){},child:const Text("Forget Password?",style: TextStyle(color: Colors.black38,fontSize: 15),),))


          ],),
        ),


        Padding(
          padding:  EdgeInsets.only(top:size.height/20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            const Text("Login with ?",style: TextStyle(color: Colors.black38,fontSize: 17),),
              TextButton(onPressed: (){
                Get.to(()=>const login());
              }, child:const Text("Phone Number",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 17),))
          ],),
        ),
        Padding(
          padding:  EdgeInsets.only(top:size.height/15,bottom: size.height/10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            const Text("Register New Account?",style: TextStyle(color: Colors.black38,fontSize: 17),),
              TextButton(onPressed: (){
                Get.to(()=>const register());
              }, child:const Text("Sign up",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 17),))
          ],),
        ),


      ],),

    );
  }
}

