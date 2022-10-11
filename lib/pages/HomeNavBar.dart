import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeNavBar extends StatelessWidget {
  const HomeNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: 70,
      decoration: BoxDecoration(
        color: const Color(0xFF232227),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 8,
          )
        ],
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        const Icon(
          Icons.mail,
          color: Colors.white,
          size: 35,
        ),
        const Icon(
          Icons.favorite,
          color: Colors.white,
          size: 35,
        ),
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: const Color(0xFFEFB322),
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(0.4),
                spreadRadius: 1,
                blurRadius: 6,
              )
            ],
            borderRadius: BorderRadius.circular(30),
          ),
          child: const Icon(
            CupertinoIcons.cart_fill,
            color: Colors.white,
            size: 30,
          ),
        ),
        const Icon(
          Icons.notifications,
          color: Colors.white,
          size: 35,
        ),
        const Icon(
          Icons.person,
          color: Colors.white,
          size: 35,
        ),
      ]),
    );
  }
}
