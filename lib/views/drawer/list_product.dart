import 'package:flutter/material.dart';
import 'package:grocery/core/components/product_admin_square.dart';

import '../../core/components/app_back_button.dart';
import '../../core/components/product_tile_square.dart';
import '../../core/constants/constants.dart';

class ListProduct extends StatelessWidget {
  const ListProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Our Product'),
        leading: const AppBackButton(),
        actions: [
          IconButton(
            onPressed: () {
              // TODO: Implement the functionality for "View Order" button
            },
            icon: Icon(Icons.shopping_cart),
          ),
          IconButton(
            onPressed: () {
              // TODO: Implement the functionality for "Edit Product" button
            },
            icon: Icon(Icons.edit),
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.only(top: AppDefaults.padding),
        itemCount: 3,
        itemBuilder: (context, index) {
          return ProductAdmin(
            data: Dummy.products.elementAt(index),
          );
        },
      ),
    );
  }
}