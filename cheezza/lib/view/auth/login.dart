import 'package:cheezza/model/Size.dart';
import 'package:cheezza/model/login/login_model.dart';
import 'package:cheezza/view/auth/login_email.dart';
import 'package:cheezza/view/home_page/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// ignore: camel_case_types
class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    Size size =  Size(context);
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: login_model(size.width),
            ),
            const Center(child: Text("Register on login with Mobail phone",style: TextStyle(color: Colors.black38,fontSize: 20),),),
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
              padding: const EdgeInsets.only(bottom: 20),
              child: Center(child: MaterialButton(onPressed: (){
                Get.to(()=>const login_email());
              },child:const Text("login with password",style: TextStyle(fontSize: 18,color: Colors.blue),),),),
            ),
            const Center(child: Text("--- or Continue with ---",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),),
            Expanded(
                flex: 1,
                child: Row(children: [
                  MaterialButton(
                    onPressed: (){},
                    child: Container(
                      width: size.width/3,
                      height: size.height/10,
                      margin:const EdgeInsets.only(right: 40,left: 40),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blue,width: 1)
                      ),
                      child:const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.facebook,size: 30,color: Colors.blue,),
                          SizedBox(width: 5,),
                          Text("Facebook")
                        ],),
                    ),
                  ),

                  MaterialButton(
                    onPressed: (){},
                    child: Container(
                      width: size.width/3,
                      height: size.height/10,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.red,width: 1)
                      ),
                      child:const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.g_mobiledata,size: 40,color: Colors.red,),
                          SizedBox(width: 5,),
                          Text("Google")
                        ],),
                    ),
                  ),
                ],))

          ],
        ),
      ),
    );
  }
}
