import 'package:flutter/material.dart';
import '../../core/routes/app_routes.dart';

class EditProductPage extends StatelessWidget {
  const EditProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Product'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: ListView(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Product Name'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter the product name';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Image Link'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Weight'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Price'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Discounted Price'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Quantity'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Product Details'),
                maxLines: null,
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Navigate to the edit product page
                  Navigator.pushNamed(context, AppRoutes.listproduct);
                },
                child: Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
