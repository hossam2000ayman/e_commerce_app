// ignore_for_file: file_names, camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_commerce_app/provider/Cart.dart';
import 'package:e_commerce_app/screens/home.dart';
import 'package:e_commerce_app/shared/appbar.dart';
import 'package:e_commerce_app/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Check_Out extends StatelessWidget {
  const Check_Out({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final value = Provider.of<Cart>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: greenColor,
        title: Text('Check Out'),
        actions: [
          Product_And_Price(),
        ],
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: SizedBox(
              height: 430,
              child: ListView.builder(
                itemCount: value.selectedProducts.length,
                // itemCount: 3,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      subtitle: Text(
                          '${value.selectedProducts[index].price} - ${value.selectedProducts[index].location}'),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(
                            '${value.selectedProducts[index].imgPath}'),
                      ),
                      title: Text('\$ ${value.selectedProducts[index].name}'),
                      trailing: IconButton(
                        icon: Icon(
                          Icons.remove,
                        ),
                        onPressed: () {
                          value.remove(value.selectedProducts[index]);
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(greenColor),
              padding: MaterialStateProperty.all(EdgeInsets.all(12)),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: (value.price > 0)
                        ? Text('Paid Transaction Completed')
                        : Text('Nothing was buy'),
                    alignment: Alignment.center,
                    content: (value.price > 0)
                        ? Text(
                            'Thank You For Using This service',
                          )
                        : Text(
                            'Try to buy something to add in your cart',
                          ),
                    actions: (value.price > 0)
                        ? [
                            TextButton(
                              child: Text('Okay'),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ]
                        : [
                            TextButton(
                              child: Text('Go to Store'),
                              onPressed: () {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (_) => Home()));
                              },
                            ),
                          ],
                    actionsAlignment: MainAxisAlignment.center,
                  );
                },
              );
            },
            child: Text(
              'Pay  \$${value.price}',
              style: TextStyle(fontSize: 19),
            ),
          ),
        ],
      ),
    );
  }
}
