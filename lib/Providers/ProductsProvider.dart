import 'package:flutter/cupertino.dart';
import 'package:joudy_0522053/Models/ProductsModel.dart';
import 'package:joudy_0522053/Services/ProductsService.dart';

class ProductsProvider extends ChangeNotifier{
  ProductsModel? productsmodel;
  Future <void>FetchData() async
  {
    productsmodel = await ProductsService.GetData();
    notifyListeners();
  }
}