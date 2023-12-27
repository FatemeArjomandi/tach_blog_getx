import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tach_blog_getx/contoroller/product_getbuilderUniqId_controller.dart';

class ProductViewGetBuilderUniqId extends StatelessWidget {
  const ProductViewGetBuilderUniqId({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Get.find<ProductControllerGetBuilderUniqId>().setUpdate(index);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.green)),
                  child: GetBuilder(
                    id: index,
                    init: ProductControllerGetBuilderUniqId(),
                    builder:
                        (ProductControllerGetBuilderUniqId productController) {
                      return Column(
                        children: [
                          Text(
                              'Product Name :${productController.productModel.name}',
                              style: const TextStyle(fontSize: 20)),
                          Text(
                              'Product Price :${productController.productModel.price}',
                              style: const TextStyle(fontSize: 20)),
                          Text(
                              'Product Off :${productController.productModel.off}',
                              style: const TextStyle(fontSize: 20)),
                        ],
                      );
                    },
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
