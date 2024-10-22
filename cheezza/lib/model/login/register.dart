import 'package:cheezza/model/login/login_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cheezza/model/size.dart';
import '../../view/auth/login.dart';


// ignore: camel_case_types
class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _registerState();
}

// ignore: camel_case_types
class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    bool val = false;
    Size size = Size(context);
    return Scaffold(

      appBar: AppBar(
        title:const Text("Sign Up",style: TextStyle(fontSize: 20,color: Colors.red),),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon:const Icon(Icons.arrow_back,color: Colors.red,)),
      ),


      body: Column(children: [
        Expanded(
            flex: 1,
            child: login_model(size.width)
        ),
        const Center(child: Text("Welcome Back",style: TextStyle(color: Colors.black,fontSize: 20),),),
        const Center(child: Text("Sign up your account",style: TextStyle(color: Colors.black38,fontSize: 20),),),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(children: [
            TextFormField(
              keyboardType: TextInputType.phone,
              decoration:const InputDecoration(
                hintText: "Full Name",
                filled: true,
                fillColor: Colors.white,
                focusColor: Colors.red,
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),

              ),

            ),

            const SizedBox(height: 10,),

            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              decoration:const InputDecoration(
                hintText: "Phone Number",
                filled: true,
                fillColor: Colors.white,
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
              focusColor: Colors.red,
              suffixIcon: Icon(Icons.remove_red_eye),
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
              child: MaterialButton(onPressed: (){},child:const Text("Create",style: TextStyle(color: Colors.white,fontSize: 19),),),
            )

          ],),
        ),


        const Spacer()

      ],),

    );
  }
}
