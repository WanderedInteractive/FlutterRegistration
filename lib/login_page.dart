import 'package:flutter/material.dart';
import 'package:reglab/product_list.dart';
import 'package:reglab/product.dart';
class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: ListView.builder(
            padding: EdgeInsets.all(20),
            itemCount: productlist.length,
            itemBuilder: (BuildContext context, int index) {

              return ListProduct(name_product: productlist[index].name, photo_path: productlist[index].pathphoto, desciption_product: productlist[index].description, price_prpduct: productlist[index].price, id_product: productlist[index].id);
            }
        ),
         appBar: AppBar(title: Text('Кроссовки'),),
    );

  }
}