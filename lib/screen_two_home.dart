import 'package:flutter/material.dart';
import 'package:ui_designs_assignment/screens/screen_two_grid.dart';

class ScreenTwoHome extends StatefulWidget {
  const ScreenTwoHome({super.key});

  @override
  State<ScreenTwoHome> createState() => _ScreenTwoHomeState();
}

class _ScreenTwoHomeState extends State<ScreenTwoHome> {
  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text(
          'Manage Store',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        toolbarHeight: 70,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: GridView.count(
          childAspectRatio: 11.5 / 8,
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          children: [
            ScreenTwoGrid(
              icon: Icons.mic_external_on_outlined,
              iconBgColor: const Color.fromARGB(255, 210, 139, 33),
              heading: 'Marketing\nDesigns',
            ),
            ScreenTwoGrid(
              icon: Icons.currency_rupee,
              iconBgColor: Colors.lightGreen,
              heading: 'Online\nPayments',
            ),
            ScreenTwoGrid(
              icon: Icons.discount,
              iconBgColor: Colors.amberAccent,
              heading: 'Discount\nCoupons',
            ),
            ScreenTwoGrid(
              icon: Icons.people,
              iconBgColor: Colors.grey,
              heading: 'My\nCustomers',
            ),
            ScreenTwoGrid(
              icon: Icons.qr_code_scanner_outlined,
              iconBgColor: Colors.blueGrey,
              heading: 'Store QR\nCode',
            ),
            ScreenTwoGrid(
              icon: Icons.add_card_outlined,
              iconBgColor: Colors.purple,
              heading: 'Extra\nCharges',
            ),
            ScreenTwoGrid(
              icon: Icons.article_outlined,
              iconBgColor: const Color.fromARGB(255, 210, 139, 33),
              heading: 'Order\nForm',
              displayNew: true,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
        fixedColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 30,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.attach_money_outlined,
              size: 30,
            ),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.dashboard_outlined,
              size: 30,
            ),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.layers_outlined,
              size: 30,
            ),
            label: 'Manage',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              size: 30,
            ),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
