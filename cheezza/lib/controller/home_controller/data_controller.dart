import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

// ignore: camel_case_types
class data_Controller extends GetxController {
  // Observable lists to store data
  List pizza = [];
  List beverage = [];
  List dessert = [];
  List pasta = [];
  List salads = [];

  @override
  void onInit() {
    super.onInit();
    fetchData(); // Fetch data when the controller is initialized
  }

  // Function to fetch all data at once
  void fetchData() {
    getPizza();
    getBeverage();
    getDessert();
    getPasta();
    getSalads();
  }

  // Function to get pizza data
  Future<void> getPizza() async {
    try {
      final response = await http.get(Uri.parse("http://localhost:5000/pizza/"));
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        pizza = data; // Update the observable list
      } else {
        print('Error: Server returned ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  // Function to get pasta data
  Future<void> getPasta() async {
    try {
      final response = await http.get(Uri.parse("http://localhost:5000/pasta/"));
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        pasta = data; // Update the observable list
      } else {
        print('Error: Server returned ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  // Function to get salads data
  Future<void> getSalads() async {
    try {
      final response = await http.get(Uri.parse("http://localhost:5000/salads/"));
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        salads = data; // Update the observable list
      } else {
        print('Error: Server returned ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  // Function to get dessert data
  Future<void> getDessert() async {
    try {
      final response = await http.get(Uri.parse("http://localhost:5000/dessert/"));
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        dessert = data; // Update the observable list
      } else {
        print('Error: Server returned ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  // Function to get beverage data
  Future<void> getBeverage() async {
    try {
      final response = await http.get(Uri.parse("http://localhost:5000/beverage/"));
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        beverage = data; // Update the observable list
      } else {
        print('Error: Server returned ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
    }
  }
}
