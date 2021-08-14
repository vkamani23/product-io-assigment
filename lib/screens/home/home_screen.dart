import 'package:flutter/material.dart';
import 'package:product_io_assignment/components/coustom_bottom_nav_bar.dart';
import 'package:product_io_assignment/enums.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
