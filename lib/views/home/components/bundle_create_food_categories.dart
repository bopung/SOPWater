import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';
import 'app_chip.dart';

class FoodCategories extends StatelessWidget {
  const FoodCategories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(
        horizontal: AppDefaults.padding,
      ),
      child: Row(
        children: [
          AppChip(
            isActive: true,
            label: 'SOP Water 600ml',
            onPressed: () {},
          ),
          AppChip(
            isActive: false,
            label: 'SOP Water 1L',
            onPressed: () {},
          ),
          AppChip(
            isActive: false,
            label: 'SOP Water 1,5L',
            onPressed: () {},
          ),
          AppChip(
            isActive: false,
            label: 'SOP Bundle',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
