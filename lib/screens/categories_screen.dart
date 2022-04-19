import 'package:flutter/material.dart';

import '../custom_widgets/category_item.dart';
import '../utilities/constants.dart';

class CategoriesScreen extends StatelessWidget {
  CategoriesScreen({Key? key}) : super(key: key);
  final List categoriesList = [
    'villas',
    'chalets',
    'villas',
    'villas',
    'chalets',
    'villas',
    'villas',
    'chalets',
    'villas',
    'villas',
    'chalets',
  ];
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
      body: SafeArea(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            mainAxisExtent: 80, // here set custom Height You Want
          ),
          itemCount: categoriesList.length,
          itemBuilder: (BuildContext context, int index) {
            return CategoryItem(
              title: categoriesList[index],
            );
          },
        ),
      ),
    );
  }
}
