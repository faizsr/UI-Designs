import 'package:flutter/material.dart';
import 'package:ui_designs_assignment/assets.dart';

class OrderedItem extends StatelessWidget {
  const OrderedItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image.asset(
            itemImageTwo,
            width: 75,
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Explore | Men | Navy Blue',
              style: TextStyle(
                fontSize: 17.7,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Text(
              '1 piece',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.black54,
              ),
            ),
            const Text(
              'Size: XL',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.black54,
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            Row(
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.purple, width: 1.3),
                        borderRadius: BorderRadius.circular(4),
                        color: const Color.fromARGB(255, 219, 240, 249),
                      ),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 2, horizontal: 11),
                        child: Text(
                          '1',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.purple,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    const Text(
                      'x \u{20B9}799',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 145,
                ),
                const Text(
                  '\u{20B9}799',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
