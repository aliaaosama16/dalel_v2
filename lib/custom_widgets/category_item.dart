import 'package:flutter/material.dart';

import '../utilities/constants.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: GestureDetector(
        onTap: () => {print('category clicked to go to category list')},
        child: Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
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
      ),
    );

    //   Card(
    //   child:
    //   Container(
    //     height: 80,
    //     padding: const EdgeInsets.all(16.0),
    //     child: Row(
    //       children: [
    //         Expanded(
    //           child: ClipRRect(
    //             borderRadius: BorderRadius.circular(5.0),
    //             child: SizedBox(
    //               width: 50,
    //               height: 50,
    //               child: Image.asset(
    //                 'assets/images/1024.png',
    //                 fit: BoxFit.cover,
    //               ),
    //             ),
    //           ),
    //         ),
    //         const Expanded(
    //           child: Padding(
    //             padding: EdgeInsets.symmetric(
    //               horizontal: 7.0,
    //             ),
    //             child: Text(
    //               'villas',
    //               style: categoryTextStyle,
    //             ),
    //           ),
    //           flex: 5,
    //         )
    //       ],
    //     ),
    //   ),
    //   elevation: 3,
    // );
  }
}
