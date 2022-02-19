import 'package:get/get.dart';
import 'package:shopping_cart/model/product_model.dart';

class CartController extends GetxController {
  var products = <ProductDetails>[].obs;
  get count => products.length;

  addCart(ProductDetails productDetails) async {
    products.add(productDetails);
  }
}
