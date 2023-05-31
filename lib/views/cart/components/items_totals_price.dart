import 'package:flutter/material.dart';

import '../../../core/components/dotted_divider.dart';
import '../../../core/constants/constants.dart';
import 'item_row.dart';

class ItemTotalsAndPrice extends StatelessWidget {
  const ItemTotalsAndPrice({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDefaults.padding),
      child: Column(
        children: const [
          ItemRow(
            title: 'Total Item',
            value: '3',
          ),
          ItemRow(
            title: 'Weight',
            value: ' 1800 ml',
          ),
          ItemRow(
            title: 'Price',
            value: 'Rp 7.5K',
          ),
          DottedDivider(),
          ItemRow(
            title: 'Total Price',
            value: 'Rp 7.5K',
          ),
        ],
      ),
    );
  }
}
