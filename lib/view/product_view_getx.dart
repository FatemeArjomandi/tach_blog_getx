import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tach_blog_getx/contoroller/product_controller.dart';

class ProductViewGetx extends StatelessWidget {
  const ProductViewGetx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX(
              autoRemove: true,
              //  
              init: ProductController(),
              builder: (ProductController productController) {
                return Column(
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
                );
              },
            ),
            ElevatedButton(onPressed: () {
              Get.find<ProductController>().productModel.update((val) {
                val!.name= 'نوشابه';
                val.price= 30988;
                val.off= '37%';
               });
            }, child: const Text('onPressed')),
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
