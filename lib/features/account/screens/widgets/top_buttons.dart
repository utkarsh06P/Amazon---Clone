import 'package:amazon_clone/features/account/screens/widgets/account_button.dart';
import 'package:flutter/material.dart';

class TopButtons extends StatelessWidget {
  const TopButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            AccountButton(
              text: 'Your orders', 
              onTap: () {}),
            AccountButton(
              text: 'Turn Seller', 
              onTap: () {}),
          ],
        ),
        const SizedBox(height: 10,),
        Row(
          children: [
            AccountButton(
              text: 'Log out', 
              onTap: () {}),
            AccountButton(
              text: 'Your Wish List', 
              onTap: () {}),
          ],
        ),
      ],
    );
  }
}