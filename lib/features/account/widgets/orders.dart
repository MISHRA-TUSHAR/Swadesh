import 'package:flutter/material.dart';
import 'package:swadesh/constants/global_variables.dart';
import 'package:swadesh/features/account/widgets/product.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  List list = [
    {
      'assets/images/swadesh.png',
      'assets/images/swadesh.png',
      'assets/images/swadesh.png',
      'assets/images/swadesh.png',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 15),
            child: const Text(
              'Your Orders',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(right: 15),
            child: Text(
              'See all',
              style: TextStyle(
                color: GlobalVariables.selectedNavBarColor,
              ),
            ),
          ),
          Container(
            height: 170,
            padding: const EdgeInsets.only(
              left: 10,
              top: 20,
              right: 0,
            ),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: list.length,
              itemBuilder: (context, index) {
                return SingleProduct(
                  image: list[index],
                );
              },
            ),
          ),
        ],
      )
    ]);
  }
}
