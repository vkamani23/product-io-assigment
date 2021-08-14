import 'package:flutter/material.dart';
import 'package:product_io_assignment/size_config.dart';

import 'components/body.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "/otp";
  final String? mobile;

  const OtpScreen({this.mobile});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("OTP Verification"),
      ),
      body: Body(mobile: mobile),
    );
  }
}
