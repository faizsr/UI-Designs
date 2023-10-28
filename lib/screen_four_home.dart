import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:ui_designs_assignment/widgets/screen_four_widgets/appbar_container.dart';
import 'package:ui_designs_assignment/widgets/screen_four_widgets/expansion_panel.dart';
import 'package:ui_designs_assignment/widgets/screen_four_widgets/feature_list.dart';
import 'package:ui_designs_assignment/widgets/screen_four_widgets/final_buttons.dart';
import 'package:ui_designs_assignment/widgets/screen_four_widgets/help_section.dart';
import 'package:ui_designs_assignment/widgets/screen_three_widgets/youtube_player.dart';

class ScreenFourHome extends StatelessWidget {
  const ScreenFourHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppbarContainer(),
            const SizedBox(
              height: 20,
            ),
            FeatureCard(
              enableHeading: true,
              listIcon: MdiIcons.web,
              listTitle: 'Custom domain name',
              listSubtitle:
                  'Get your own custom domain and build your brand on the internet.',
            ),
            FeatureCard(
              listIcon: MdiIcons.accountCheck,
              listTitle: 'Verified seller badge',
              listSubtitle:
                  'Get green verified badge under your store name and build trust.',
            ),
            FeatureCard(
              listIcon: MdiIcons.desktopClassic,
              listTitle: 'Dukaan for PC',
              listSubtitle:
                  'Access all the exclusive premium features on Dukaan for PC.',
            ),
            FeatureCard(
              listIcon: MdiIcons.priorityHigh,
              listTitle: 'Priority support',
              listSubtitle:
                  'Get your questions resolved with our priority customer support.',
            ),
            const SizedBox(
              height: 15,
            ),
            Divider(
              thickness: 4,
              color: Colors.grey[300],
            ),
            MyYoutubePlayer(),
            Divider(
              thickness: 4,
              color: Colors.grey[300],
            ),
            const SizedBox(
              height: 20,
            ),
            ExpandedPanel(
              enableHeading: true,
              questionText: 'What types of businesses can use Dukaan Premium?',
              answerText:
                  'Dukaan caters to a wide variety of sellers. Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online - Dukaan is the perfect platform for you.',
            ),
            const SizedBox(
              height: 8,
            ),
            ExpandedPanel(
              questionText: 'What is your refund policy?',
            ),
            const SizedBox(
              height: 8,
            ),
            ExpandedPanel(
              questionText:
                  'Will there be an automatic change after the paid trail?',
            ),
            const SizedBox(
              height: 8,
            ),
            ExpandedPanel(
              questionText: 'What payment methods do you offer?',
            ),
            const SizedBox(
              height: 8,
            ),
            ExpandedPanel(
              questionText: 'What happens when my free trial ends?',
            ),
            const SizedBox(
              height: 8,
            ),
            ExpandedPanel(
              questionText: 'What are the terms for the custom domain?',
            ),
            const SizedBox(
              height: 20,
            ),
            Divider(
              thickness: 4,
              color: Colors.grey[300],
            ),
            HelpSection(),
            Divider(
              thickness: 2,
              color: Colors.grey[300],
            ),
            HelpSectionButton(),
          ],
        ),
      ),
    );
  }
}
