import 'package:flutter/material.dart';
import 'package:cheezza/model/size.dart';
login_model(width_size){
return  Container(
  width: width_size/2.5,
  child:const Center(child: Row(
    children: [
      Icon(Icons.home_filled,color: Colors.red,size: 40,),
      SizedBox(width: 5,),
      Text("CHEEZZA",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red,fontSize: 25),),
    ],
  )),
);
}