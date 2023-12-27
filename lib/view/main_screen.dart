import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tach_blog_getx/contoroller/product_controller.dart';

import 'product_view_getx.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // var conter = 0.obs;
    //RxInt conter = 0.obs;
    // var conter = Rx(0);
    // var conter = Rx<int> (0);
    // RxBool status = false.obs;
    ProductController productController = Get.put(ProductController());

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() =>
                // status.isTrue
                //         ? const Text('Hello')
                //         : const Icon(Icons.radio)
                Column(
                  children: [
                    Text(
                        'Product Name :${productController.productModel.value.name}',
                        style: const TextStyle(fontSize: 20)),
                    Text(
                        'Product Price :${productController.productModel.value.price}',
                        style: const TextStyle(fontSize: 20)),
                    Text(
                        'Product Off :${productController.productModel.value.off}',
                        style: const TextStyle(fontSize: 20)),
                  ],
                )),
            ElevatedButton(
                onPressed: () {
                  // status.isFalse? status.value = true: status.value=false;
                  productController.productModel.update((val) {
                    val!.name = 'پوفک نمکی';
                    val.price = 2000000;
                    val.off = '20%';
                  });
                },
                child: const Text('onPressed')),
            ElevatedButton(
                onPressed: () {
                  Get.to(const ProductViewGetx());
                },
                child: const Text('go')),
          ],
        ),
      ),
    );
  }
}
