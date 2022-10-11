import 'package:ex/pages/HomeNavBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'items.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor:const Color(0xFF232227),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: (() {}),
                          child: const Icon(
                            Icons.sort_rounded,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                        InkWell(
                          onTap: (() {}),
                          child: const Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                      ]),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "Hot & Fast Food",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "Delievers on Time",
                    style: TextStyle(fontSize: 22, color: Colors.white60),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const TabBar(
                  isScrollable: true,
                  labelStyle: TextStyle(fontSize: 20),
                  indicator: BoxDecoration(),
                  labelPadding: EdgeInsets.symmetric(horizontal: 20),
                  tabs: [
                    Text("Burger"),
                    Text("Pizza"),
                    Text("Chesse"),
                    Text("Pasta"),
                  ],
                ),
                 const SizedBox(
                  height: 10,
                ),
                const Expanded(
                    child: TabBarView(
                  children: [
                    Items(),
                    Items(),
                    Items(),
                    Items(),
                  ],
                )),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const HomeNavBar(),
      ),
    );
  }
}
