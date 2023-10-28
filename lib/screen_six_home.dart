import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:ui_designs_assignment/assets.dart';
// import 'package:ui_designs_assignment/assets.dart';
import 'package:ui_designs_assignment/widgets/screen_six_widgets/product_template.dart';
// import 'package:ui_designs_assignment/widgets/screen_six_widgets/products_template.dart';

class ScreenSixHome extends StatelessWidget {
  const ScreenSixHome({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          toolbarHeight: 60,
          centerTitle: true,
          elevation: 0,
          title: const Text(
            'Catalogue',
            style: TextStyle(fontSize: 19),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(
                MdiIcons.magnify,
                size: 30,
              ),
            ),
          ],
          bottom: const TabBar(
            indicatorWeight: 4,
            indicatorColor: Colors.white,
            labelStyle: TextStyle(
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
            ),
            tabs: [
              Tab(
                text: 'Products',
              ),
              Tab(
                text: 'Categories',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  ProductTemplate(
                    productImage: itemImageOne,
                    productName: 'GreyLocke | Women',
                    productPrice: '\u{20B9}799',
                  ),
                  ProductTemplate(
                    productImage: itemImageTwo,
                    productName: 'Salted Cocunut | Icecr..',
                    productPrice: '\u{20B9}799',
                  ),
                  ProductTemplate(
                    productImage: itemImageThree,
                    productName: 'Levis Jeans | Men',
                    productPrice: '\u{20B9}799',
                  ),
                  ProductTemplate(
                    productImage: itemImageFour,
                    productName: 'Mug | Explore',
                    productPrice: '\u{20B9}799',
                  ),
                  ProductTemplate(
                    productImage: itemImageFive,
                    productName: 'Formal Shoes | Men',
                    productPrice: '\u{20B9}799',
                  ),
                  ProductTemplate(
                    productImage: itemImageSix,
                    productName: 'Evergreen Chair | Home',
                    productPrice: '\u{20B9}799',
                  ),
                ],
              ),
            ),
            const Center(
              child: Text(
                'No Categories Available!',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                  color: Colors.black54,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
