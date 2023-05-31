import 'package:flutter/material.dart';

import '../../core/components/app_back_button.dart';
import 'components/faq_item.dart';

class TermsAndConditionsPage extends StatelessWidget {
  const TermsAndConditionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text('Terms And Condition'),
      ),
      body: Column(
        children: const [
          TitleAndParagraph(
              isTitleHeadline: false,
              title: '1. Introduction',
              paragraph:
                  '''These Terms and Conditions govern the sale and purchase of mineral water products ("Products") between SOP Water Company ("Seller") and the customer ("Buyer"). By placing an order with SOP Water Company, the Buyer agrees to be bound by these Terms and Conditions.'''),
          TitleAndParagraph(
              isTitleHeadline: false,
              title: '2. Agreement',
              paragraph:
                  '''Officia irure irure anim nisi exercitation velit cupidatat qui Lorem id ad. Amet quis occaecat quis voluptate cupidatat quis irure irure consequat irure.'''),
          TitleAndParagraph(
              isTitleHeadline: false,
              title: '3. Account',
              paragraph:
                  '''Officia irure irure anim nisi exercitation velit cupidatat qui Lorem id ad. Amet quis occaecat quis voluptate cupidatat quis irure irure consequat irure.'''),
          TitleAndParagraph(
              isTitleHeadline: false,
              title: '4. Returns and Refunds',
              paragraph:
                  '''Officia irure irure anim nisi exercitation velit cupidatat qui Lorem id ad. Amet quis occaecat quis voluptate cupidatat quis irure irure consequat irure.Officia irure irure anim nisi exercitation velit cupidatat qui Lorem id ad. Amet quis occaecat quis '''),
        ],
      ),
    );
  }
}
