import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:ui_designs_assignment/screens/screen_one_list.dart';

class ScreenOneHome extends StatelessWidget {
  const ScreenOneHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_sharp),
        ),
        title: const Text('Additional information'),
      ),
      body: Container(
        child: Column(
          children: [
            ScreenOne(
              leadingIcon: Icons.share_outlined,
              titleText: 'Share Dukaan App',
              trailingIcon: Icons.keyboard_arrow_right,
            ),
            ScreenOne(
              leadingIcon: Icons.font_download_outlined,
              titleText: 'Change Language',
              trailingIcon: Icons.keyboard_arrow_right,
            ),
            ScreenOne(
              leadingIcon: MdiIcons.whatsapp,
              titleText: 'WhatsApp Chat Support',
              displayswitch: true,
            ),
            ScreenOne(
              leadingIcon: Icons.lock_outline,
              titleText: 'Privacy Policy',
            ),
            ScreenOne(
              leadingIcon: Icons.star_border_outlined,
              titleText: 'Rate Us',
            ),
            ScreenOne(
              leadingIcon: Icons.logout_outlined,
              titleText: 'Sign Out',
            ),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Version',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '2.4.2',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
