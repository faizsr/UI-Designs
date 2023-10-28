import 'package:flutter/material.dart';
import 'package:ui_designs_assignment/widgets/screen_five_widgets/custom_listtiles.dart';
import 'package:ui_designs_assignment/widgets/screen_five_widgets/customer_details.dart';
import 'package:ui_designs_assignment/widgets/screen_five_widgets/ordered_items.dart';
import 'package:ui_designs_assignment/widgets/screen_five_widgets/payment_paid.dart';
import 'package:ui_designs_assignment/widgets/screen_five_widgets/place_and_pin.dart';

class ScreenFiveHome extends StatelessWidget {
  const ScreenFiveHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        centerTitle: true,
        title: const Text(
          'Order #1688068',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
        ),
        leading: const Icon(
          Icons.arrow_back_outlined,
          size: 30,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
          child: Column(
            children: [
              ListTileCustom(
                titleText: 'May 31, 05:42 PM',
                trailingIcon: Icons.circle,
                titleTextSize: 18,
                trailingText: 'Delivered',
                trailingTextColor: Colors.black54,
                trailingTextSize: 17,
                trailingIconSize: 19,
                textFontWeight: FontWeight.w500,
              ),
              Divider(
                height: 0,
                thickness: 2,
                color: Colors.grey.shade300,
              ),
              ListTileCustom(
                titleText: '1 ITEM',
                titleTextColor: Colors.black54,
                titleTextSize: 18,
                trailingText: 'RECEIPT',
                trailingTextColor: Colors.purple,
                trailingTextSize: 18,
                trailingIcon: Icons.receipt_long_outlined,
                trailingIconSize: 25,
                textFontWeight: FontWeight.w500,
              ),
              const SizedBox(
                height: 15,
              ),
              const OrderedItem(),
              const SizedBox(
                height: 30,
              ),
              Divider(
                height: 0,
                thickness: 2,
                color: Colors.grey.shade300,
              ),
              Container(
                height: 30,
                child: ListTileCustom(
                  titleTextSize: 18,
                  titleText: 'Item Total',
                  trailingText: '\u{20B9}799',
                  trailingTextSize: 17,
                  textFontWeight: FontWeight.w500,
                ),
              ),
              Container(
                height: 40,
                child: ListTileCustom(
                  titleTextSize: 18,
                  titleText: 'Delivery',
                  trailingText: 'FREE',
                  trailingTextSize: 17,
                  textFontWeight: FontWeight.w500,
                ),
              ),
              Container(
                height: 65,
                child: ListTileCustom(
                  titleTextSize: 17,
                  titleTextColor: Colors.black,
                  titleText: 'Grand total',
                  trailingText: '\u{20B9}799',
                  trailingTextSize: 20,
                  trailingTextColor: Colors.black,
                  textFontWeight: FontWeight.w600,
                ),
              ),
              Divider(
                height: 0,
                thickness: 2,
                color: Colors.grey.shade300,
              ),
              ListTileCustom(
                enableTrailing: true,
                titleText: 'CUSTOMER DETAILS',
                titleTextColor: Colors.black54,
                titleTextSize: 15,
                trailingText: 'SHARE',
                trailingTextColor: Colors.purple,
                trailingTextSize: 15,
                trailingIcon: Icons.share_outlined,
                trailingIconSize: 22,
                textFontWeight: FontWeight.w500,
              ),
              CustomerDetails(
                listTitle: 'Deepa',
                listSubtitle: '+91-7829000484',
                setIcon: true,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomerDetails(
                listTitle: 'Address',
                listSubtitle:
                    'D 1101, Chartered Beverly Hills ,Subramanyapura P.O',
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  PlaceAndPincode(
                    headingText: 'City',
                    subtitleText: 'Bangalore',
                  ),
                  const SizedBox(
                    width: 120,
                  ),
                  PlaceAndPincode(
                    headingText: 'Pincode',
                    subtitleText: '560061',
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              PaymentPaid(),
              Divider(
                height: 0,
                thickness: 2,
                color: Colors.grey.shade300,
              ),
              ListTileCustom(
                titleText: 'ADDDITIONAL INFRORMATION ',
                titleTextColor: Colors.black54,
                titleTextSize: 15,
                textFontWeight: FontWeight.w500,
              ),
              CustomerDetails(
                listTitle: 'State',
                listSubtitle: 'Karnataka',
              ),
              CustomerDetails(
                listTitle: 'Email',
                listSubtitle: 'greeniceaqua@gmail.com',
                shareButton: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
