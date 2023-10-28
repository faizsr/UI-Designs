import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:ui_designs_assignment/widgets/screen_one_widget/on_off_button.dart';

class ProductTemplate extends StatelessWidget {
  final String productImage;
  final String productName;
  final String productPrice;

  ProductTemplate({
    required this.productImage,
    required this.productName,
    required this.productPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 15,
        right: 15,
        left: 15,
      ),
      height: 170,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(color: Colors.grey.shade300, blurRadius: 12),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          left: 10,
          right: 6,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 105,
              child: Stack(
                children: [
                  Positioned(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(7),
                          child: Image.asset(
                            productImage,
                            width: 100,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                productName,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const Text(
                                '1 piece',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Text(
                                productPrice,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              const Text(
                                'In stock',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: Icon(
                      MdiIcons.dotsVertical,
                      size: 20,
                      color: Colors.grey,
                    ),
                  ),
                  const Positioned(
                    right: 0,
                    top: 58,
                    child: OnOffButton(),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 2,
              color: Colors.grey[200],
            ),
            const Padding(
              padding: EdgeInsets.all(4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.share_outlined,
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    'Share Product',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
