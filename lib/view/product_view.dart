import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tach_blog_getx/contoroller/product_controller.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    ProductController productController = Get.put(ProductController());

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Column(
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
                  productController.productModel.update((val) {
                    val!.name = 'لواشک';
                    val.price = 20233000;
                    val.off = '40%';
                  });
                },
                child: const Text('onPressed')),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text('back')),
          ],
        ),
      ),
    );
  }
}
