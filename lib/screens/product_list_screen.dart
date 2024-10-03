import 'package:flutter/material.dart';
import 'package:assignment2/models/product_model.dart';
import '../widgets/product_tile.dart';

class ProductListScreen extends StatelessWidget {
  final List<Product> products = [
    Product(
        title: 'Razer Blade 14 ',
        description: '14-Inch gaming laptop with AMD Ryzen™ 9 8945HS processor and NVIDIA® GeForce RTX™ 40 Series graphics—available in Black or Mercury.',
        price: 1899,
        image: "assets/razor14.jpeg"
    ),
    Product(
        title: 'Razer Blade 15 ',
        description: 'Featuring the latest NVIDIA® GeForce RTX™ 40 Series GPUs, 13th Gen Intel® Core™ i7 Processor (14-Core), and the fastest displays',
        price: 2999,
        image: "assets/razor15.jpg"
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Product List')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductTile(product: products[index]);
        },
      ),
    );
  }
}
