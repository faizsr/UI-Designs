import 'package:flutter/material.dart';

class PaymentPaid extends StatelessWidget {
  const PaymentPaid({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      title: const Text(
        'Payment',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: const Padding(
        padding: EdgeInsets.only(top: 2),
        child: Text(
          'Online',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
      trailing: Container(
        height: 25,
        width: 60,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 245, 216),
          borderRadius: BorderRadius.circular(5),
        ),
        child: const Center(
          child: Text(
            'PAID',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
