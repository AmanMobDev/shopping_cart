import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_cart/model/product_model.dart';
import 'package:shopping_cart/view/my_home_page.dart';

import '../controller/home_page_controller.dart';

class ProductAddPage extends StatelessWidget {
  const ProductAddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final _formKey = GlobalKey<FormState>();
    TextEditingController productName = TextEditingController();
    TextEditingController productQty = TextEditingController();
    TextEditingController productPrice = TextEditingController();
    final productController = Get.put(HomePageController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Product'),
      ),
      body: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                controller: productName,
                decoration: const InputDecoration(
                  hintText: 'Enter your product name',
                  labelText: 'Product Name',
                ),
              ),
              TextFormField(
                controller: productQty,
                decoration: const InputDecoration(
                  hintText: 'Enter your product qty',
                  labelText: 'Product qty',
                ),
              ),
              TextFormField(
                controller: productPrice,
                decoration: const InputDecoration(
                  hintText: 'Enter your product price',
                  labelText: 'Product Price',
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              productController.addProduct(
                ProductDetails(
                  "productImage",
                  productName.text,
                  int.parse(productQty.text.toString()),
                  int.parse(productPrice.text.toString()),
                ),
              );

              Get.to(() => const MyHomePage());
            },
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }
}
