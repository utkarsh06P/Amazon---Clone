import 'package:amazon_clone/constants/global_variables.dart';
import 'package:amazon_clone/features/account/screens/widgets/single_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  
  List list = [
    'assets/images/D37847648_Accessories_savingdays_Jan22_Cat_PC_1500.jpg',
    'assets/images/D37847648_Accessories_savingdays_Jan22_Cat_PC_1500.jpg',
    'assets/images/D37847648_Accessories_savingdays_Jan22_Cat_PC_1500.jpg',
    'assets/images/D37847648_Accessories_savingdays_Jan22_Cat_PC_1500.jpg,'
    ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 15),
              child: const Text('Your orders', 
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              ),
            ),
            Container(
                    padding: const EdgeInsets.only(
                      right: 15,
                    ),
                    child: Text(
                      'See all',
                      style: TextStyle(
                        color: GlobalVariables.selectedNavBarColor,
                      ),
                    ),
                  ),
          ],
        ),
        Container(
          height: 170,
          padding: const EdgeInsets.only(
            left: 10,
            top: 20,
            right: 0
          ),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: list.length,
            itemBuilder: (context , index) {
              return SingleProduct(image: list[index]);
            }),
        )
      ],
    );
  }
}