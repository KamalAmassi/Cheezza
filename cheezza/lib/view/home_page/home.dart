import 'package:cheezza/controller/home_controller/data_controller.dart';
import 'package:cheezza/view/card/card.dart';
import 'package:cheezza/view/home_page/category.dart';
import 'package:cheezza/model/home/home_photo.dart';
import 'package:flutter/material.dart';
import 'package:cheezza/model/size.dart';
import 'package:get/get.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  final data_Controller controller = Get.put(data_Controller(), permanent: true);
  final home_photo photo = home_photo();

  @override
  Widget build(BuildContext context) {
    Size size = Size(context);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "CHEEZZA",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Get.to(() => const card());
          },
          icon: const Icon(Icons.shopping_cart, color: Colors.red),
        ),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: photo.photo.length,
        itemBuilder: (context, index) {
          return MaterialButton(
            onPressed: () {
              switch (photo.photo[index]['name']) {
                case "pizza":
                  Get.to(() => category(name: "Pizza", data: controller.pizza));
                  break;
                case "pasta":
                  Get.to(() => category(name: "Pasta", data: controller.pasta));
                  break;
                case "dessert":
                  Get.to(() => category(name: "Dessert", data: controller.dessert));
                  break;
                case "salads":
                  Get.to(() => category(name: "Salads", data: controller.salads));
                  break;
                case "beverage":
                  Get.to(() => category(name: "Beverage", data: controller.beverage));
                  break;
              }
            },
            child:  Container(
              height: size.height / 4,
              width: size.width,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(photo.photo[index]['photo']),
                  fit: BoxFit.fill,
                ),
              ),
            )
          );
        },
      ),
    );
  }
}
