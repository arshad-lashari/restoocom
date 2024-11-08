import 'package:flutter/material.dart';

class ProductListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: Center(
        child: Text('List of Products'),
      ),
    );
  }
}
