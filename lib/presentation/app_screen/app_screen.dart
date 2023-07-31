import 'dart:async';

import 'package:chatgtp/core/app_export.dart';
import 'package:flutter/material.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
       Navigator.pushNamed(context, AppRoutes.welcomeScreenTwoScreen);
     });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray900,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgVector,
                height: getSize(
                  108,
                ),
                width: getSize(
                  108,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 39,
                  bottom: 5,
                ),
                child: Text(
                  "ChatGPT",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtNunitoSansBold40,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
