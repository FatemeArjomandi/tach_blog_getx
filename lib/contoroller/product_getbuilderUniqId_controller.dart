import 'package:get/get.dart';

import '../model/product_model.dart';

class ProductControllerGetBuilderUniqId extends GetxController {
  ProductModel productModel =
      ProductModel(name: 'چیتوز نمکی', off: '50%', price: 1000000);

  setUpdate( int id) {
    productModel = ProductModel(name: 'پشمک', off: '26%', price: 83287);
    update([id]);
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    print('onInit');
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    print('onReady');
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    print('onClose');
  }
}
