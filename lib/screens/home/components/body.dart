import 'package:flutter/material.dart';
import 'package:product_io_assignment/screens/sign_in/components/body.dart';

import '../../../size_config.dart';
import 'categories.dart';
import 'home_header.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: getProportionateScreenHeight(20)),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: AnimatedProductIO(),
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          HomeHeader(),
          SizedBox(height: getProportionateScreenWidth(20)),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, bottom: 15.0),
            child: Text(
              'Start your own store, choose a Category >',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Expanded(child: CategoryList()),
        ],
      ),
    );
  }
}
