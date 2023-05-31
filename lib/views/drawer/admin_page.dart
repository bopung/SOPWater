import 'package:flutter/material.dart';

import '../../core/routes/app_routes.dart';

class AdminPage extends StatelessWidget {
  const AdminPage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello Geovanny!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Navigate to the view order page
                Navigator.pushNamed(context, AppRoutes.myOrder);
              },
              child: Text('View Order'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Navigate to the edit product page
                Navigator.pushNamed(context, AppRoutes.listproduct);
              },
              child: Text('Edit Product'),
            ),
          ],
        ),
      ),
    );
  }
}
  
  
  