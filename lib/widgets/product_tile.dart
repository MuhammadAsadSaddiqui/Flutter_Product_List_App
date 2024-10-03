import 'package:flutter/material.dart';
import '../models/product_model.dart';
import '../screens/product_detail_screen.dart';

class ProductTile extends StatelessWidget {
  final Product product;
  ProductTile({required this.product});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailScreen(product: product),
          ),
        );
      },
      // Use a SingleChildScrollView for the title content
      title: SingleChildScrollView(
        scrollDirection: Axis.vertical, // Scroll vertically
        child: Row(
          children: [
            // Display the image from the URL
            Image.network(
              product.image,
              width: 90,
              height: 90,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 10), // Space between image and text
            // Display product title and price in a column
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title,
                    style: TextStyle(fontWeight: FontWeight.bold),
                    maxLines: 2, // Limit to 2 lines
                    overflow: TextOverflow.ellipsis, // Show ellipsis if overflow
                  ),
                  Text(
                    product.description,
                    maxLines: 3, // Limit to 3 lines
                    overflow: TextOverflow.ellipsis, // Show ellipsis if overflow
                  ),
                  Text('\$${product.price}'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
