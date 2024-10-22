
import 'package:cheezza/controller/home_controller/card_controller.dart';
import 'package:cheezza/controller/home_controller/home_controller.dart';
import 'package:cheezza/view/home_page/home.dart';
import 'package:flutter/material.dart';
import 'package:cheezza/model/size.dart';
import 'package:get/get.dart';

class category_detals extends StatefulWidget {
  const category_detals({super.key, required this.image, required this.name, required this.description, required this.size_s, required this.size_m, required this.rating});
  final String image;
  final String name;
  final String description;
  final double size_s;
  final double size_m;
  final double rating;

  @override
  State<category_detals> createState() => _category_detalsState();
}

class _category_detalsState extends State<category_detals> {
  @override
  Widget build(BuildContext context) {
    card_controller controller2 = Get.put(card_controller(),permanent: true);
    home_controller controller = Get.put(home_controller(), permanent: true);
        ExpansionTileController();
    Size size = Size(context);
    return Scaffold(
      body: ListView(
        children: [
          Container(
            width: size.width,
            height: size.height / 3,
            decoration:  BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                     widget.image,
                    ),
                    fit: BoxFit.fill)),
          ),
          const SizedBox(
            height: 20,
          ),
           Padding(
             padding: const EdgeInsets.only(left: 20,right: 20),
             child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  widget.name,
                  style:const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                 Text(
                 widget.description,
                  style:const TextStyle(fontSize: 15),
                ),
                const SizedBox(
                  height: 10,
                ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 17,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 17,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 17,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 17,
                    ),
                    const Icon(Icons.star_border, size: 17),
                    const SizedBox(
                      width: 30,
                    ),
                    Text(
                      "${widget.rating}",
                      style:const TextStyle(
                          color: Colors.yellow,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
          ),
           ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const Spacer(),
              Container(
                width: size.width / 3,
                height: size.height / 10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border:
                        Border.all(color: controller.choice_color, width: 2)),
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Spacer(),
                    const Text("Size M"),
                    const Spacer(),
                    Row(
                      children: [
                        const Spacer(),
                        Text(
                          "${widget.size_m} \$",
                          style:const TextStyle(color: Colors.green),
                        ),
                        const Spacer(),
                      ],
                    ),
                    const Spacer(),
                  ],
                ),
              ),
              const Spacer(),
              Container(
                width: size.width / 3,
                height: size.height / 10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                        color: controller.nonchoice_color, width: 2)),
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Spacer(),
                    const Text("Size S"),
                    const Spacer(),
                    Row(
                      children: [
                        const Spacer(),
                        Text(
                          "${widget.size_s} \$",
                          style:const TextStyle(color: Colors.green),
                        ),
                        const Spacer(),
                      ],
                    ),
                    const Spacer(),
                  ],
                ),
              ),
              const Spacer(),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
            child: Text(
              "Size",
              style: TextStyle(color: Colors.red, fontSize: 20,fontWeight: FontWeight.bold),
            ),
          ),
          DropdownButton(
            value: controller.valueSize,
            borderRadius: BorderRadius.circular(20),
            padding: const EdgeInsets.all(20),
            focusColor: Colors.white,
            dropdownColor: Colors.white,
            items: const [
              DropdownMenuItem(value: 'M', child: Text("M")),
              DropdownMenuItem(value: 'S', child: Text("S")),
            ],
            onChanged: (value) {
              setState(() {
                controller.valueSize = value!;
              });
            },
          ),


         const Padding(
            padding:  EdgeInsets.all(8.0),
            child: Text("Quantity",style: TextStyle(color: Colors.green,fontSize: 20,fontWeight: FontWeight.bold),),
          ),

          DropdownButton(
            value: controller.quantity,
            borderRadius: BorderRadius.circular(20),
            focusColor: Colors.white,
            padding:const EdgeInsets.all(20),
            dropdownColor: Colors.white,
            items:const [
              DropdownMenuItem(value: 1, child: Text("1")),
              DropdownMenuItem(value: 2, child: Text("2")),
              DropdownMenuItem(value: 3, child: Text("3")),
              DropdownMenuItem(value: 4, child: Text("4")),
              DropdownMenuItem(value: 5, child: Text("5")),
              DropdownMenuItem(value: 6, child: Text("6")),
              DropdownMenuItem(value: 7, child: Text("7")),
              DropdownMenuItem(value: 8, child: Text("8")),
              DropdownMenuItem(value: 9, child: Text("9")),
              DropdownMenuItem(value: 10, child: Text("10")),
            ],
            onChanged: (value) {
              setState(() {
                controller.quantity = value;
              });
            },
          ),



          Container(
            height: size.height/14,
            margin:const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(20)
            ),
            child: TextButton(onPressed: (){
              controller2.add_data(widget.image, widget.name, widget.description , widget.rating  , (controller.valueSize == "S" ?widget.size_s:widget.size_m) , controller.valueSize, controller.quantity!);
              Get.to(()=>const home());
            }, child:const Text("Add To Cart",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),)) ,
          )




        ],
      ),
    );
  }
}
