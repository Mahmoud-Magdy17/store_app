import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';

class CustomProductCard extends StatelessWidget {
  const CustomProductCard({super.key, required this.product});
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          width: 200,
          height: 120,
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 8,
                    offset: const Offset(4, 4))
              ],
            ),
            child: Card(
              // clipBehavior: Clip.hardEdge,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 108, 108, 108)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$${product.price}',
                          style: const TextStyle(color: Colors.black),
                          
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          right: 20,
          top: -60,
          child: SizedBox(
            height: 120,
            width: 80,
            child: Image.network(
                product.image ??
                    'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg',
                fit: BoxFit.contain,
                ),
          ),
        ),
      ],
    );
  }
}
