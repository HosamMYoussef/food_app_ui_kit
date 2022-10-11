import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PsotNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          children: const [
            Padding(
              padding: EdgeInsets.only(top:8.0),
              child: Text(
                'Total Price ',
                style: TextStyle(
                    color: Colors.white60, fontWeight: FontWeight.w500, fontSize: 20),
              ),
            ),
            SizedBox(height: 10,),
              Text(
          '\$ 100',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 22,
          ),
        ),
          ],
        ),
      
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          decoration: const BoxDecoration(
            color: Color(0xFFEFB322),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Row(children: const [
            Text(
              'Buy Now',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(CupertinoIcons.cart_fill,color: Colors.white,size: 30,)
          ]),
        )
      ]),
    );
  }
}
