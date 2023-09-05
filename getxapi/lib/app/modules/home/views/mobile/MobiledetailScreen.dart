// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:getxapi/app/modules/home/model/mobilemodel.dart';

class MobileDetailSceren extends StatefulWidget {
  final Product product;
  const MobileDetailSceren({super.key, required this.product});

  @override
  State<MobileDetailSceren> createState() => _MobileDetailScerenState();
}

class _MobileDetailScerenState extends State<MobileDetailSceren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.product.title.toString(),
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Stack(
        children:[ Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 15,
            ),
            image(),
            SizedBox(
              height: 8,
            ),
            Text(
              widget.product.brand.toString(),
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Divider(
              color: Colors.grey,
              endIndent: 100,
              indent: 100,
              thickness: 2,
            ),
            rowwidget(),
            SizedBox(
              height: 8,
            ),
            colWidget(),
          ],
        ),
        Positioned(
          left: 10,
          top: 300,
          child: RotationTransition(
            turns: new AlwaysStoppedAnimation(340/ 360),
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(50)
              ),
              child: Center(child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Discount ',style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                  Text(widget.product.discountPercentage.toString()+' % ',style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                
          
                ],
              )),),
          ))]
      ),
    );
  }

  image() {
    return CarouselSlider.builder(
      itemCount: widget.product.images.length,
      itemBuilder: (context, index, realIndex) {
        return Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 5.0),
          decoration: BoxDecoration(
              //border:Border.all(color: Colors.black) ,
              image: DecorationImage(
                  image: NetworkImage(widget.product.images[index].toString()),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(40),
              color: Colors.red),
        );
      },
      options: CarouselOptions(
        height: 400.0,
        aspectRatio: 16 / 9,
        viewportFraction: 0.8,
        initialPage: 3,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayCurve: Curves.easeIn,
        autoPlayAnimationDuration: const Duration(milliseconds: 2000),

        // aspectRatio: 16/9,
        // viewportFraction: 0.8,
        // initialPage: 0,
        // enableInfiniteScroll: true,
        // reverse: false,
        // autoPlay: true,
        // autoPlayInterval: Duration(seconds: 3),
        // autoPlayAnimationDuration: Duration(milliseconds: 800),
        // autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        //onPageChanged: callbackFunction,
        // scrollDirection: Axis.horizontal,
      ),
    );
  }

  colWidget() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          reuseblerow('Stock : ', widget.product.stock.toString()),
          
          reuseblerow('Category : ', widget.product.category.toString()),
          Text("Description : ",style: TextStyle(
            fontSize: 18,fontWeight: FontWeight.bold)),
          Text('          '+widget.product.description.toString(),style: TextStyle(fontSize: 16,overflow: TextOverflow.fade))
          ],
      ),
    );
  }

  reuseblerow(String name, String title) {
    return SizedBox(
      child: Row(
        children: [Text(name,style: TextStyle(
          fontSize: 18,fontWeight: FontWeight.bold
        ),), Row(children:[ Text(title,style: TextStyle(fontSize: 16,overflow: TextOverflow.fade))])],
      ),
    );
  }

  rowwidget() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Price',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              '\$' + widget.product.price.toString(),
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            )
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 28,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 28,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 28,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 28,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 28,
                ),
              ],
            ),
            Text(
              widget.product.rating.toString(),
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ]),
    );
  }
}

// return CarouselSlider(
      
//       options: CarouselOptions(
//         height: 500.0,
//         aspectRatio: 16 / 9,
//         viewportFraction: 0.8,
//         initialPage: 3,
//         enableInfiniteScroll: true,
//         reverse: false,
//         autoPlay: false,
//         autoPlayCurve: Curves.fastOutSlowIn,
//         autoPlayAnimationDuration: const Duration(milliseconds: 5000),

//         // aspectRatio: 16/9,
//         // viewportFraction: 0.8,
//         // initialPage: 0,
//         // enableInfiniteScroll: true,
//         // reverse: false,
//         // autoPlay: true,
//         // autoPlayInterval: Duration(seconds: 3),
//         // autoPlayAnimationDuration: Duration(milliseconds: 800),
//         // autoPlayCurve: Curves.fastOutSlowIn,
//          enlargeCenterPage: true,
//         enlargeFactor: 0.3,
//         // onPageChanged: callbackFunction,
//         // scrollDirection: Axis.horizontal,
//       ),
      
//       items: [
//         widget.product.images[0].toString(),
//          widget.product.images[1].toString(),
//           widget.product.images[2].toString(),
//            widget.product.images[3].toString(),
           
           
//       ].map((i) {
//         return ListView.builder(
//           itemCount: widget.product.images.length,
//           itemBuilder: (context, index) {
//           return Container(
          
//                 width: MediaQuery.of(context).size.width,
//                 margin: EdgeInsets.symmetric(horizontal: 5.0),
//                 decoration: BoxDecoration(
//                     image: DecorationImage(
//                         image: NetworkImage(widget.product.images[index].toString()), fit: BoxFit.cover),
//                     borderRadius: BorderRadius.circular(40),
//                     color: Colors.grey),
//                 child:  Align(
//                   alignment: Alignment.bottomCenter,
//                   child: Text(
//                     widget.product.title.toString(),
//                     style: TextStyle(
//                     fontSize: 50,
//                     color: Colors.black,
//                     fontWeight: FontWeight.bold),
//                   ),
//                 ));
//         },);
//       }).toList(),
//     );