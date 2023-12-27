
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tach_blog_getx/contoroller/product_getbuilder_controller.dart';

class ProductViewGetBuilder extends StatelessWidget {
  const ProductViewGetBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder(
              init: ProductControllerGetBuilder(),
              builder: (ProductControllerGetBuilder productController) {
                return Column(
                  children: [
                    Text('Product Name :${productController.productModel.name}',
                        style: const TextStyle(fontSize: 20)),
                    Text(
                        'Product Price :${productController.productModel.price}',
                        style: const TextStyle(fontSize: 20)),
                    Text('Product Off :${productController.productModel.off}',
                        style: const TextStyle(fontSize: 20)),
                  ],
                );
              },
            ),
            ElevatedButton(onPressed: () {
              Get.find<ProductControllerGetBuilder>().setUpdate();
            }, child: const Text('onPressed')),
            ElevatedButton(onPressed: () {
            Get.delete<ProductControllerGetBuilder>();
            }, child: const Text('back')),
          ],
        ),
      ),
    );
  }
}
