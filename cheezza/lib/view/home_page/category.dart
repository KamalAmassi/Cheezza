import 'package:cheezza/view/home_page/category_detals.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cheezza/model/size.dart';
// ignore: camel_case_types
class category extends StatefulWidget {
  const category({super.key, required this.data, required this.name});
  final List data;
  final String name;
  @override
  State<category> createState() => _categoryState();
}

// ignore: camel_case_types
class _categoryState extends State<category> {
  @override
  Widget build(BuildContext context) {
    Size size = Size(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name,style:const TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.red),),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon:const Icon(Icons.arrow_back,color: Colors.red,)),
      ),
      body: Container(
        margin:const EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 10),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: size.width < 700 ? 2 : 3 ,mainAxisSpacing: 30,crossAxisSpacing: 30),
          itemCount: widget.data.length,
          itemBuilder: (context, index) {
          return IntrinsicHeight(
            child: Container(
              width: 200,
              margin:const EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 8,
                    offset:const Offset(0, 3),
                  ),
                ],
              ),
              child:MaterialButton(
                splashColor: Colors.red,
                onPressed: () {
                    Get.to(()=> category_detals(image: widget.data[index]['image_url'], name: widget.data[index]['name'], description: widget.data[index]['description'], size_s: widget.data[index]['price_s'], size_m: widget.data[index]['price_m'], rating: widget.data[index]['rating'],));
                },
                child: Column(children: [

                  const Spacer(),

                  CircleAvatar(
                      radius: size.width < 600 ? 50 : 60,
                      backgroundImage: NetworkImage(widget.data[index]['image_url']),
                      ),

                  const Spacer(),


                   Text(widget.data[index]['name'],style:const TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                   Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                 const Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Icon(Icons.star,color: Colors.yellow,size:17,),
                     Icon(Icons.star,color: Colors.yellow,size:17,),
                     Icon(Icons.star,color: Colors.yellow,size:17,),
                     Icon(Icons.star,color: Colors.yellow,size:17,),
                     Icon(Icons.star_border,size:17),
                   ],),
                 const SizedBox(width: 15,),
                 Text("${widget.data[index]['rating']}",style:const TextStyle(color: Colors.yellow,fontSize: 15,fontWeight: FontWeight.bold),)

                 ],),
                 const Spacer(),


                  Padding(
                   padding:const EdgeInsets.only(left: 8.0,right: 8),
                   child: Row(children: [
                     const Expanded(child: Text("Size M",style: TextStyle(fontSize: 15,color: Colors.black38),),),
                     const Spacer(),
                     Expanded(child:  Text("${widget.data[index]["price_m"]}",style:const TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.red),))
                   ],),
                 ),

                   Padding(
                   padding:const EdgeInsets.only(left: 8.0,right: 8),
                   child: Row(children: [
                     const Expanded(child: Text("Size S",style: TextStyle(fontSize: 15,color: Colors.black38),),),
                     const Spacer(),
                     Expanded(child:  Text("${widget.data[index]["price_s"]}",style:const TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.red),))
                   ],),
                 ),

                  const Spacer()

                ],
                ),
              )
            ),
          );
        },),
      ),
    );
  }
}
