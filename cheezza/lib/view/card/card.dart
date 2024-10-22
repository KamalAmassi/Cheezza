import 'package:cheezza/controller/home_controller/card_controller.dart';
import 'package:flutter/material.dart';
import 'package:cheezza/model/size.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class card extends StatefulWidget {
  const card({super.key});

  @override
  State<card> createState() => _cardState();
}
// ignore: camel_case_types
class _cardState extends State<card> {
  @override
  Widget build(BuildContext context) {
    card_controller controller = Get.put(card_controller(),permanent: true);
    Size size = Size(context);
    List  data = controller.data ;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Card",
          style: TextStyle(
              color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),
        ),

        leading: IconButton(onPressed: (){
          Get.back();
        }, icon:const Icon(Icons.arrow_back,color: Colors.red,)),

      ),
      body: ListView.builder(
        itemCount:data.length,
        itemBuilder: (context, index) {
          return GetBuilder<card_controller>(
            init: card_controller(),
            builder: (context) {
              return Container(
                height: size.height / 6,
                width: size.width,
                margin:const EdgeInsets.only(left: 10,right: 10,top: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(color: Colors.black12, width: 0.5),
                              image:  DecorationImage(
                                  image: NetworkImage(
                                    data[index].image
                                  ),
                                    fit: BoxFit.cover)),
                        )),
                    Expanded(
                        flex: 2,
                        child: Row(
                          children: [
                             Expanded(
                              child: Padding(
                                padding:const  EdgeInsets.all(15),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Spacer(),
                                    Text(
                                      data[index].name,
                                      style:const TextStyle(
                                          color: Colors.red,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const Spacer(),
                                    Text(
                                      data[index].size,
                                      style:const TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),const Spacer(),
                                    Text(
                                      data[index].rank.toString(),
                                      style:const TextStyle(
                                          color: Colors.yellow,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const Spacer(),
                                    Text(
                                      "\$ ${data[index].price}",
                                      style:const TextStyle(
                                          color: Colors.green, fontSize: 17),
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                                child: IconButton(
                                    onPressed: () {
                                        controller.delete_data(data[index].name);
                                    },
                                    icon:const Icon(
                                      Icons.delete,
                                      color: Colors.red,
                                    )))
                          ],
                        ))
                  ],
                ),
              );
            }
          );
        },
      ),
    );
  }
}
