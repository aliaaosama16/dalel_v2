import 'package:flutter/material.dart';

import '../utilities/constants.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {print('category clicked to go to category list')},
      child: Card(
        child: Container(
          margin: const EdgeInsets.only(top: 8),
          child: ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: SizedBox(
                width: 50,
                height: 50,
                child: Image.asset(
                  'assets/images/1024.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Text(
              title,
              style: categoryTextStyle,
            ),
          ),
        ),
      ),
    );
  }
}
