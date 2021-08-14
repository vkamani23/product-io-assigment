import 'package:flutter/material.dart';
import 'package:product_io_assignment/components/coustom_bottom_nav_bar.dart';
import 'package:product_io_assignment/enums.dart';
import 'package:product_io_assignment/screens/home/components/special_offers.dart';


class OffersScreen extends StatelessWidget {
  static String routeName = "/offers";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SpecialOffers(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.offers),
    );
  }
}
