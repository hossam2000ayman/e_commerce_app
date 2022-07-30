// ignore_for_file: file_names, must_be_immutable, camel_case_types, use_key_in_widget_constructors, prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables, sort_child_properties_last, avoid_unnecessary_containers

import 'package:e_commerce_app/shared/appbar.dart';
import 'package:e_commerce_app/shared/colors.dart';
import 'package:flutter/material.dart';

import '../model/item.dart';

class Detail_Screen extends StatefulWidget {
  Item product;
  Detail_Screen({required this.product});

  @override
  State<Detail_Screen> createState() => _Detail_ScreenState();
}

class _Detail_ScreenState extends State<Detail_Screen> {
  bool isShowMore = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: greenColor,
        // ignore: prefer_const_constructors
        title: Text('Details Screen'),
        actions: [
          Product_And_Price(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(widget.product.imgPath),
            SizedBox(
              height: 15,
            ),
            Text(
              '\$ ${widget.product.price}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    'New',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.orangeAccent[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(3),
                ),
                SizedBox(
                  width: 40,
                ),
                Container(
                  child: Row(
                    children: [widget.product.icons],
                  ),
                ),
                SizedBox(width: 40),
                Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.edit_location,
                        size: 30,
                      ),
                      Text(
                        widget.product.location,
                        style: TextStyle(fontSize: 19),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
                width: double.infinity,
                child: Text(
                  'Details :',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 22),
                )),
            SizedBox(
              height: 16,
            ),
            Text(
              widget.product.description,
              style: TextStyle(
                fontSize: 18,
              ),
              maxLines: isShowMore ? 3 : null,
              overflow: TextOverflow.fade,
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  isShowMore = !isShowMore;
                });
              },
              child: Text(isShowMore ? 'Show more' : 'Show less'),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
