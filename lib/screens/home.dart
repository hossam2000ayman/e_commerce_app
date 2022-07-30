// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:e_commerce_app/model/item.dart';
import 'package:e_commerce_app/screens/check%20out.dart';
import 'package:e_commerce_app/screens/detail%20screen.dart';
import 'package:e_commerce_app/screens/login.dart';
import 'package:e_commerce_app/screens/register.dart';
import 'package:e_commerce_app/shared/appbar.dart';
import 'package:e_commerce_app/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/Cart.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    UserAccountsDrawerHeader(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage('assets/images/team_universt.png'),
                          fit: BoxFit.cover,
                        )),
                        accountName: Text('Hossam Ayman'),
                        accountEmail: Text('hhasanelbadry@student.eelu.edu.eg'),
                        currentAccountPicture: CircleAvatar(
                          radius: 55,
                          backgroundImage: AssetImage('assets/images/me.jpg'),
                        )),
                    ListTile(
                      title: Text('Home'),
                      leading: Icon(Icons.home),
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Home(),
                            ));
                      },
                    ),
                    ListTile(
                      title: Text('My Product'),
                      leading: Icon(Icons.add_shopping_cart),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return Check_Out();
                          },
                        ));
                      },
                    ),
                    ListTile(
                      title: Text('Sign Up'),
                      leading: Icon(Icons.login),
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Register()));
                      },
                    ),
                    ListTile(
                      title: Text('Log out'),
                      leading: Icon(Icons.logout),
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Login(),
                            ));
                      },
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 290),
                  child: Text(
                    'Developed By Hossam Ayman @ 2022',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: greenColor,
        title: Text('Home'),

        // Consumer<Cart>(
        //                   //value is instance from class Cart
        //   builder: (context, value, child) {
        //     return Text('${value.myName}');
        //   },
        // ),
        actions: [
          Product_And_Price(),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 8.0,
        ),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 4 / 8,
            crossAxisSpacing: 10,
            mainAxisSpacing: 1,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => Detail_Screen(
                              product: items[index],
                            )));
              },
              child: GridTile(
                footer: GridTileBar(
                  backgroundColor: Colors.grey[700]!.withOpacity(0.9),
                  trailing: Consumer<Cart>(
                    builder: (context, value, child) {
                      return IconButton(
                        icon: Icon(Icons.add),
                        splashColor: Colors.green[400],
                        onPressed: () {
                          value.add(items[index]);
                        },
                        color: Colors.white,
                      );
                    },
                  ),
                  title: Text(''),
                  leading: Text(
                    "\$ ${items[index].price.toString()}",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 13,
                      right: 0,
                      left: 0,
                      bottom: -9,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          items[index].imgPath,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
