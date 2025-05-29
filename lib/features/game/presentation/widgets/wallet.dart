import 'package:flutter/material.dart';

Widget buildWalletBalanceContainer(BuildContext context, String userId) {
  return Container(
    padding: const EdgeInsets.all(20),
    margin: const EdgeInsets.symmetric(horizontal: 25),
    decoration: BoxDecoration(
      gradient: const LinearGradient(
        colors: [
          Color.fromARGB(255, 47, 29, 52),
          Color.fromARGB(255, 57, 46, 71),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      borderRadius: BorderRadius.circular(8),
      // boxShadow: [
      //   BoxShadow(
      //     color: Colors.grey.withOpacity(.2),
      //     blurRadius: 16,
      //     spreadRadius: 3,
      //     offset: const Offset(0, 6),
      //   ),
      // ],
      border: Border.all(color: Colors.grey.shade200),
    ),
    child: Stack(
      children: [
        // Wallet Info Content
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Icon(
                  Icons.account_balance_wallet_rounded,
                  color: Colors.white,
                  size: 20,
                ),
                SizedBox(width: 5),
                Text(
                  'Wallet Balance',
                  style: TextStyle(
                    fontFamily: 'Geologica',
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              'User ID: $userId',
              style: const TextStyle(
                fontFamily: 'Geologica',
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 6),
            const Text(
              'Chips: 29,520.00',
              style: TextStyle(
                fontFamily: 'Geologica',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),

        // Top-right Cash Out Icon
        Positioned(
          top: -14,
          right: -14,
          child: IconButton(
            icon: const Icon(
              Icons.arrow_circle_up_sharp,
              color: Colors.white,
              size: 20,
            ),
            tooltip: 'Cash Out',
            onPressed: () {
              // Add your cash out logic here
            },
          ),
        ),
      ],
    ),
  );
}
