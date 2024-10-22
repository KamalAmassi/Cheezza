import 'dart:async';
import 'package:cheezza/view/auth/login.dart';
import 'package:cheezza/view/auth/login_email.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class spalsh extends StatefulWidget {
  const spalsh({super.key});

  @override
  State<spalsh> createState() => _spalshState();
}

class _spalshState extends State<spalsh> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      setState(() {
        Get.to(()=>const login_email());
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery
        .of(context )
        .size
        .height;
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
         Container(
          height: height,
          width:width,
          child:const Image(image: AssetImage("../../../images/spalsh/spalsh.PNG"),fit: BoxFit.fill,),
        ),
        Positioned(
            bottom: width/5,
            left: width/10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
          const Text("Restaurant",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
          const SizedBox(height: 8,),
          const Text("cheeza pizza",style: TextStyle(fontSize: 18,color: Colors.white),),
          const SizedBox(height: 12,),
          MaterialButton(
            onPressed: () {

            },
            child: Container(
              height: 40,
              width: width/2.5,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
              ),
              child:const Center(child: Text("Start order >",style: TextStyle(color: Colors.white),)),
            ),
          )
        ],))
      ],
      )
    );
  }
}
