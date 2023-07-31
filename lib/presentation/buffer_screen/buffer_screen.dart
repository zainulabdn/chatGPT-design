import 'package:chatgtp/core/app_export.dart';
import 'package:chatgtp/widgets/app_bar/appbar_image.dart';
import 'package:chatgtp/widgets/app_bar/appbar_subtitle.dart';
import 'package:chatgtp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BufferScreen extends StatelessWidget {
  const BufferScreen({Key? key}) : super(key: key);

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
                      onTapArrowleft3(context);
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
                      Spacer(),
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
                      Padding(
                          padding: getPadding(top: 32),
                          child: Row(mainAxisSize: MainAxisSize.min, children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgFrame15,
                                height: getVerticalSize(43),
                                width: getHorizontalSize(61),
                                radius: BorderRadius.only(
                                    topLeft:
                                        Radius.circular(getHorizontalSize(16)),
                                    topRight:
                                        Radius.circular(getHorizontalSize(16)),
                                    bottomRight: Radius.circular(
                                        getHorizontalSize(16)))),
                            Container(
                                height: getVerticalSize(43),
                                margin: getMargin(left: 10),
                                child: SmoothIndicator(
                                    offset: 0,
                                    count: 3,
                                    size: Size.zero,
                                    effect: ScrollingDotsEffect(
                                        spacing: 5,
                                        activeDotColor: ColorConstant.whiteA700,
                                        dotColor: ColorConstant.whiteA700,
                                        dotHeight: getVerticalSize(5),
                                        dotWidth: getHorizontalSize(5))))
                          ])),
                      CustomImageView(
                          onTap:(){
                             Navigator.pushNamed(context, AppRoutes.getAnAnswerScreen);
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
  onTapArrowleft3(BuildContext context) {
    Navigator.pop(context);
  }
}
