import 'package:flutter/material.dart';
import 'package:joudy_0522053/Providers/ProductsProvider.dart';
import 'package:joudy_0522053/Widgets/GridItem.dart';
import 'package:provider/provider.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Products",style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,),),
    ),
      body: Consumer<ProductsProvider>(builder: (context, value, child) {
        final list = value.productsmodel?.data;
        if(list == null)
          {
            value.FetchData();
            return Center(child: CircularProgressIndicator());
          }
        else
          {
            return GridView.builder(
              itemCount: list.length,

                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
                  (
                    crossAxisCount: 2,
                    crossAxisSpacing:10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 3/7
                ), itemBuilder: (BuildContext context, int index)
              {
                return GridItem(
                    Img: value.productsmodel?.data[index]["image"],
                    Name: value.productsmodel?.data[index]["name"],
                    Price: value.productsmodel?.data[index]["price"],
                    Description: value.productsmodel?.data[index]["description"],
                );
              },
              );

          }
      },

      ),

    );
  }
}
