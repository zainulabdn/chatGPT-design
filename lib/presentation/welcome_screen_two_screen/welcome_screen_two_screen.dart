import 'package:chatgtp/core/app_export.dart';
import 'package:chatgtp/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomeScreenTwoScreen extends StatelessWidget {
  const WelcomeScreenTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(all: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgFile,
                          height: getSize(24),
                          width: getSize(24),
                          margin: getMargin(top: 18)),
                      Container(
                          width: getHorizontalSize(181),
                          margin: getMargin(top: 25),
                          child: Text("Welcome to\nChatGPT",
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtNunitoSansBold32)),
                      Padding(
                          padding: getPadding(top: 26),
                          child: Text("Ask anything, get yout answer",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtNunitoSansBold16)),
                      CustomImageView(
                          svgPath: ImageConstant.imgArrowleft,
                          height: getVerticalSize(20),
                          width: getHorizontalSize(16),
                          margin: getMargin(top: 59)),
                      Padding(
                          padding: getPadding(top: 12),
                          child: Text("Capabilities",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtNunitoSansBold20)),
                      SizedBox(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(top: 38),
                              padding: getPadding(
                                  left: 44, top: 12, right: 44, bottom: 12),
                              decoration: AppDecoration.fillWhiteA70014
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder8),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        width: getHorizontalSize(245),
                                        margin: getMargin(bottom: 1),
                                        child: Text(
                                            "Remembers what user said earlier in the conversation",
                                            maxLines: null,
                                            textAlign: TextAlign.center,
                                            style: AppStyle
                                                .txtNunitoSansRegular16))
                                  ]))),
                      SizedBox(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(top: 16),
                              padding: getPadding(
                                  left: 48, top: 12, right: 48, bottom: 12),
                              decoration: AppDecoration.fillWhiteA70014
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder8),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        width: getHorizontalSize(237),
                                        margin: getMargin(bottom: 1),
                                        child: Text(
                                            "Allows user to provide follow-up corrections",
                                            maxLines: null,
                                            textAlign: TextAlign.center,
                                            style: AppStyle
                                                .txtNunitoSansRegular16))
                                  ]))),
                      SizedBox(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(top: 16),
                              padding: getPadding(
                                  left: 53, top: 10, right: 53, bottom: 10),
                              decoration: AppDecoration.fillWhiteA70014
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder8),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        width: getHorizontalSize(228),
                                        margin: getMargin(top: 1),
                                        child: Text(
                                            "Trained to decline inappropriate requests",
                                            maxLines: null,
                                            textAlign: TextAlign.center,
                                            style: AppStyle
                                                .txtNunitoSansRegular16))
                                  ]))),
                      Container(
                          height: getVerticalSize(2),
                          margin: getMargin(top: 60),
                          child: SmoothIndicator(
                              offset: 0,
                              count: 3,
                              size: Size.zero,
                              effect: ScrollingDotsEffect(
                                  spacing: 12,
                                  activeDotColor: ColorConstant.deepPurple100,
                                  dotColor: ColorConstant.whiteA70033,
                                  dotHeight: getVerticalSize(2),
                                  dotWidth: getHorizontalSize(28))))
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(48),
                text: "Next",
                margin: getMargin(left: 20, right: 20, bottom: 23),
                fontStyle: ButtonFontStyle.NunitoSansBold18,
                onTap: () {
                  onTapNext(context);
                })));
  }

  /// Navigates to the welcomeScreenThreeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the welcomeScreenThreeScreen.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.welcomeScreenThreeScreen);
  }
}
