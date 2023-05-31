import 'package:flutter/material.dart';

import '../../../../core/enums/dummy_order_status.dart';
import 'order_status_row.dart';

class OrderStatusColumn extends StatelessWidget {
  const OrderStatusColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        OrderStatusRow(
          status: OrderStatus.confirmed,
          date: '27.01.2023',
          time: '01.00 PM',
          isStart: true,
          isActive: true,
        ),
        OrderStatusRow(
          status: OrderStatus.processing,
          date: '27.01.2023',
          time: '03.00 PM',
          isActive: true,
        ),
        OrderStatusRow(
          status: OrderStatus.shipped,
          date: '27.01.2023',
          time: '05.00 PM',
          isActive: true,
        ),
        OrderStatusRow(
          status: OrderStatus.delivery,
          date: '27.01.2023',
          time: '07.00 PM',
          isEnd: true,
        ),
      ],
    );
  }
}
