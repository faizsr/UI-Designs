import 'package:flutter/material.dart';

class itemCard extends StatelessWidget {
  final String orderNumber;
  final String orderDate;
  final String depositedNumber;
  final String itemAmount;
  final String itemImage;

  itemCard({
    required this.orderNumber,
    required this.orderDate,
    required this.depositedNumber,
    required this.itemAmount,
    required this.itemImage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          contentPadding: const EdgeInsets.all(0),
          leading: SizedBox(
            width: 60,
            height: 60,
            child: Image.asset(itemImage),
          ),
          title: Text(
            orderNumber,
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
          subtitle: Text(orderDate),
          trailing: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(
                height: 8,
              ),
              Text(
                itemAmount,
                style: const TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                width: 110,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.circle,
                      size: 15,
                      color: Colors.green,
                    ),
                    Text(' Successful'),
                  ],
                ),
              ),
            ],
          ),
        ),
        Text(
          depositedNumber,
          style: const TextStyle(
              fontStyle: FontStyle.italic, color: Colors.black54),
        ),
        const SizedBox(
          height: 5,
        ),
        Divider(
          thickness: 1,
          color: Colors.grey[400],
        ),
      ],
    );
  }
}
