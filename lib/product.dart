import 'package:flutter/material.dart';
import 'main.dart';

class DetailedProduct extends StatelessWidget {
  const DetailedProduct({super.key, required this.tappedProduct});

  final Product tappedProduct;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
        title: const Text('Detailes Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(tappedProduct.image),
            ProductData(product: tappedProduct, price: tappedProduct.price),
          ],
        ),
      ),
    );
  }
}

class ProductData extends StatelessWidget {
  const ProductData({super.key, required this.product, required this.price});

  final Product product;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          product.name,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 23.0,
          ),
        ),
        Text(
          'EGP. $price',
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18.0,
          ),
        ),
        const Text(
          'More Details',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14.0,
          ),
        ),
        Text(
          product.description,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 13.0,
          ),
        ),
      ],
    );
  }
}
