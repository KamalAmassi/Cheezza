import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:cheezza/model/card/card_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;


// ignore: camel_case_types
class card_controller extends GetxController {
  List<card_model> data = [];

   // ignore: non_constant_identifier_names
   add_data(String image, String name, String desc, double rank, double price, String size, int count) {
    data.add(card_model(image, name, desc, rank, price, size, count));
   // update();
  }
  // ignore: non_constant_identifier_names
  delete_data(String name){
      for(int i=0 ; i<data.length ;i++){
        if(data[i].name == name){
          data.removeAt(i);
        }
      }
  }
}
