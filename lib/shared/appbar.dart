// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:e_commerce_app/provider/Cart.dart';
import 'package:e_commerce_app/screens/check%20out.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Product_And_Price extends StatelessWidget {
  const Product_And_Price({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            IconButton(
              icon: Icon(Icons.add_shopping_cart_rounded),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Check_Out();
                  },
                ));
              },
              iconSize: 25,
              padding: EdgeInsets.only(left: 10, right: 10),
            ),
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 7, 255, 135)),
              padding: EdgeInsets.all(4),
              child: Consumer<Cart>(
                builder: (context, value, child) {
                  return Text(
                    '${value.selectedProducts.length}',
                    style: TextStyle(color: Colors.black),
                  );
                },
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 2.0,
          ),
          child: Consumer<Cart>(
            builder: (context, value, child) {
              return Text(
                '\$ ${value.price}',
                style: const TextStyle(fontSize: 16),
              );
            },
          ),
        ),
      ],
    );
  }
}
