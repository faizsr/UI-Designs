import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 2, color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 15,
          bottom: 10,
          left: 15,
          right: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Transaction Limit',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            ),
            const SizedBox(
              height: 3,
            ),
            const Text(
              'A free limit up to which you will recieve the online payments directly in your bank.',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            const SizedBox(
              height: 20,
            ),
            LinearProgressIndicator(
              backgroundColor: Colors.grey.shade300,
              valueColor: const AlwaysStoppedAnimation(Colors.purple),
              value: 0.3,
              minHeight: 7,
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            const Text(
              '36,668 left out of \u{20B9}50,000',
              style: TextStyle(fontSize: 17, color: Colors.black54),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: Colors.purple,
              ),
              onPressed: () {},
              child: const Text(
                'Increase limit',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
