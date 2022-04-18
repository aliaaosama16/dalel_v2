import 'package:flutter/material.dart';

import '../custom_widgets/category_item.dart';
import '../utilities/constants.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: orangeLight,
        title: const Text(
          'categories',
          style: appBarTextStyle,
        ),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(16),
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        crossAxisCount: 2,
        children:  <Widget>[
          Container(child: CategoryItem(),height: 80,),
          CategoryItem(),
          CategoryItem(),
          CategoryItem(),
          CategoryItem(),
          CategoryItem(),
          CategoryItem(),
          CategoryItem(),
        ],
      ),
    );
  }
}
