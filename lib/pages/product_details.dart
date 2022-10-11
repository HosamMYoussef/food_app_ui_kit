import 'package:ex/pages/HomeNavBar.dart';
import 'package:ex/pages/post_nav_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import './post_nav_bar.dart';

import '../models/product.dart';

class ProductsDetails extends StatefulWidget {
  const ProductsDetails({Key? key}) : super(key: key);
  static const routeName = '/product_details';

  @override
  State<ProductsDetails> createState() => _ProductsDetailsState();
}

class _ProductsDetailsState extends State<ProductsDetails> {
  int x = 1;
  @override
  Widget build(BuildContext context) {
    final Product product =
        ModalRoute.of(context)?.settings.arguments as Product;

    return Scaffold(
      backgroundColor: const Color(0xFF232227),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 25, left: 10, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                InkWell(
                  onTap: (() {
                    Navigator.pop(context);
                  }),
                  child: const Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                    size: 32,
                  ),
                ),
                InkWell(
                  onTap: (() {}),
                  child: const Icon(
                    CupertinoIcons.cart_fill,
                    color: Colors.white,
                    size: 32,
                  ),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Image.asset(
                  'assets/images/bg.png',
                  height: MediaQuery.of(context).size.height / 1.7,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          product.title,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                              color: Colors.white),
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  if (x == 1) {
                                    x = 1;
                                  } else {
                                    x--;
                                  }
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5)),
                                child: const Icon(
                                  CupertinoIcons.minus,
                                  size: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 9,
                        ),
                        Text(
                          '${x}',
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              x++;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)),
                            child: const Icon(
                              CupertinoIcons.plus,
                              size: 20,
                            ),
                          ),
                        )
                      ],
                    ))
              ]),
              const SizedBox(
                height: 15,
              ),
              const Text(
                  'We bring You the burger with cheese served with onions,cold drink and fries.We bring You the burger with cheese served with onions,cold drink and fries. ',
                  style: TextStyle(color: Colors.white, fontSize: 18))
            ],
          ),
        ),
      ),
      bottomNavigationBar: PsotNavBar(),
    );
  }
}
