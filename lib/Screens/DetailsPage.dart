import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:joudy_0522053/Providers/ProductsProvider.dart';
import 'package:joudy_0522053/Widgets/GridItem.dart';
import 'package:joudy_0522053/Widgets/ProductsDetails.dart';
import 'package:provider/provider.dart';

class DetailsPage extends StatelessWidget {
   DetailsPage({super.key,required this.Img, required this.Name,required this.Description});
  String Img;
  String Name;
  String Description;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Details", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
      ),
      body: Container(
        child: ProductsDetails(Img: Img, Name: Name,Description: Description,),
      ));

  }
}