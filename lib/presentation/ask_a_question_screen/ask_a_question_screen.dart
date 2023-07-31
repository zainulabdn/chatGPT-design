import 'package:chatgtp/core/app_export.dart';
import 'package:chatgtp/widgets/app_bar/appbar_image.dart';
import 'package:chatgtp/widgets/app_bar/appbar_subtitle.dart';
import 'package:chatgtp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class AskAQuestionScreen extends StatelessWidget {
  const AskAQuestionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            appBar: CustomAppBar(
                height: getVerticalSize(59),
                leadingWidth: 38,
                leading: AppbarImage(
                    height: getSize(20),
                    width: getSize(20),
                    svgPath: ImageConstant.imgArrowleftWhiteA700,
                    margin: getMargin(left: 18, top: 18, bottom: 17),
                    onTap: () {
                      onTapArrowleft2(context);
                    }),
                title: AppbarSubtitle(
                    text: "New Chat ", margin: getMargin(left: 18))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 20, right: 20, bottom: 61),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Spacer(),
                      Container(
                          width: getHorizontalSize(267),
                          margin: getMargin(left: 68),
                          padding: getPadding(
                              left: 12, top: 11, right: 12, bottom: 11),
                          decoration: AppDecoration.fillDeeppurple500.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder23),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Text("What is a neural network?",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtNunitoSansRegular16))
                              ])),
                      CustomImageView(
                        onTap: () {
                          Navigator.pushNamed(context, AppRoutes.bufferScreen);
                        },
                          svgPath: ImageConstant.imgFrame14,
                          height: getVerticalSize(52),
                          width: getHorizontalSize(335),
                          radius: BorderRadius.circular(getHorizontalSize(8)),
                          margin: getMargin(top: 41))
                    ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleft2(BuildContext context) {
    Navigator.pop(context);
  }
}
