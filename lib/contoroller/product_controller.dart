import 'package:get/get.dart';

import '../model/product_model.dart';

class ProductController extends GetxController {
  Rx<ProductModel> productModel =
      ProductModel(name: 'چیتوز نمکی', off: '50%', price: 1000000).obs;
}
