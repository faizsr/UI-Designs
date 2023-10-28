import 'package:flutter/material.dart';
import 'package:ui_designs_assignment/assets.dart';
// import 'package:ui_designs_assignment/assets.dart';
import 'package:ui_designs_assignment/widgets/screen_three_widgets/balance_amount_card.dart';
import 'package:ui_designs_assignment/widgets/screen_three_widgets/items_card.dart';
import 'package:ui_designs_assignment/widgets/screen_three_widgets/payment_action_buttons.dart';
import 'package:ui_designs_assignment/widgets/screen_three_widgets/transaction_buttons.dart';
import 'package:ui_designs_assignment/widgets/screen_three_widgets/transaction_limit_card.dart';

class ScreenThreeHome extends StatelessWidget {
  const ScreenThreeHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 70,
        leading: const Icon(
          Icons.arrow_back_sharp,
          size: 30,
        ),
        title: const Text('Payments'),
        actions: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(
              Icons.info_outline_rounded,
              size: 35,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TransactionCard(),
              const SizedBox(
                height: 20,
              ),
              PaymentActionButton(
                trailingIcon: Icons.keyboard_arrow_right_outlined,
                trailingIconSize: 35,
                titleText: 'Default Method',
                titleTextFontWeight: FontWeight.w500,
                titleTextSize: 18,
                trailingText: 'Online Payments',
              ),
              const SizedBox(
                height: 12,
              ),
              PaymentActionButton(
                trailingIcon: Icons.keyboard_arrow_right_outlined,
                trailingIconSize: 35,
                titleText: 'Payment Profile',
                titleTextFontWeight: FontWeight.w500,
                titleTextSize: 18,
                trailingText: 'Bank Account',
              ),
              const SizedBox(
                height: 5,
              ),
              Divider(
                thickness: 1,
                color: Colors.grey[400],
              ),
              const SizedBox(
                height: 10,
              ),
              PaymentActionButton(
                trailingIcon: Icons.keyboard_arrow_down_outlined,
                trailingIconSize: 25,
                titleText: 'Payment Overview',
                titleTextSize: 19,
                titleTextFontWeight: FontWeight.w600,
                trailingText: 'Life Time',
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BalanceAmountCard(
                    cardColor: Colors.orange,
                    amountText: '\u{20B9}0',
                    titleText: 'AMOUNT ON HOLD',
                  ),
                  BalanceAmountCard(
                    cardColor: Colors.green,
                    amountText: '\u{20B9}13,332',
                    titleText: 'AMOUNT RECIEVED',
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      'Transactions',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      TransactionButtons(
                        buttonText: 'On hold',
                        buttonTextColor: Colors.black54,
                        buttonColor: Colors.grey.shade300,
                      ),
                      TransactionButtons(
                        buttonText: 'Payouts (15)',
                        buttonTextColor: Colors.white,
                        buttonColor: Colors.purple,
                      ),
                      TransactionButtons(
                        buttonText: 'Refunds',
                        buttonTextColor: Colors.black54,
                        buttonColor: Colors.grey.shade300,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  itemCard(
                    orderNumber: 'Order #1688068',
                    orderDate: 'Jul 12, 02:06 PM',
                    depositedNumber: '\u{20B9}799 deposited to 58860200000138',
                    itemAmount: '\u{20B9}799',
                    itemImage: itemImageOne,
                  ),
                  itemCard(
                    orderNumber: 'Order #1457741',
                    orderDate: 'Apr 26, 07:47 AM',
                    depositedNumber:
                        '\u{20B9}397.4 deposited to 58860200000138',
                    itemAmount: '\u{20B9}397.4',
                    itemImage: itemImageTwo,
                  ),
                  itemCard(
                    orderNumber: 'Order #1408896',
                    orderDate: 'Apr 11, 10:54 AM',
                    depositedNumber:
                        '\u{20B9}686.42 deposited to 58860200000138',
                    itemAmount: '\u{20B9}686.42',
                    itemImage: itemImageThree,
                  ),
                  itemCard(
                    orderNumber: 'Order #1369633',
                    orderDate: 'Apr 2, 11:29 AM',
                    depositedNumber:
                        '\u{20B9}1123.5 deposited to 58860200000138',
                    itemAmount: '\u{20B9}1123.5',
                    itemImage: itemImageFour,
                  ),
                  itemCard(
                    orderNumber: 'Order #1567653',
                    orderDate: 'Sep 22, 10:23 PM',
                    depositedNumber: '\u{20B9}599 deposited to 58860200000138',
                    itemAmount: '\u{20B9}599',
                    itemImage: itemImageFive,
                  ),
                  itemCard(
                    orderNumber: 'Order #1399783',
                    orderDate: 'Jan 5, 05:49 AM',
                    depositedNumber: '\u{20B9}2199 deposited to 58860200000138',
                    itemAmount: '\u{20B9}2199',
                    itemImage: itemImageSix,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
