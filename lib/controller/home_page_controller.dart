import 'dart:developer';

import 'package:get/get.dart';
import 'package:shopping_cart/model/product_model.dart';

class HomePageController extends GetxController {
  var products = <ProductDetails>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchProductDetails();
  }

  addProduct(ProductDetails productDetails) async {
    products.add(productDetails);
  }

  Future fetchProductDetails() async {
    log('${products.obs.value.toJson()}');
    return products;
  }
}
