import 'package:ex/models/product.dart';
import 'package:ex/pages/product_details.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import './pages/home.dart';
import 'package:flutter/material.dart';

void main() {
   SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {

    return ChangeNotifierProvider (
      create:(context)=> Products(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        
       
        
        routes: {
          '/': (context) => const HomePage(), 
          ProductsDetails.routeName: (context)=>  const ProductsDetails(),
        },
      ),
    );
  }
}
