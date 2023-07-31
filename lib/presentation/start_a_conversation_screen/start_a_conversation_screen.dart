import 'package:chatgtp/core/app_export.dart';
import 'package:chatgtp/widgets/app_bar/appbar_image.dart';
import 'package:chatgtp/widgets/app_bar/appbar_subtitle.dart';
import 'package:chatgtp/widgets/app_bar/custom_app_bar.dart';
import 'package:chatgtp/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class StartAConversationScreen extends StatelessWidget {
  const StartAConversationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            appBar: CustomAppBar(
                height: getVerticalSize(22),
                leadingWidth: 38,
                leading: AppbarImage(
                    height: getSize(20),
                    width: getSize(20),
                    svgPath: ImageConstant.imgArrowleftWhiteA700,
                    margin: getMargin(left: 18, top: 1),
                    onTap: () {
                      onTapArrowleft1(context);
                    }),
                title: AppbarSubtitle(
                    text: "New Chat ", margin: getMargin(left: 18))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 20, bottom: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(22),
                          width: getHorizontalSize(110),
                          margin: getMargin(left: 18)),
                      Spacer()
                    ])),
            bottomNavigationBar: Container(
                margin: getMargin(left: 28, right: 28, bottom: 69),
                decoration: AppDecoration.outlineWhiteA700cc
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                          padding: getPadding(top: 6, bottom: 7),
                          child: Text("What is a neural network?",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtNunitoSansRegular16)),
                      Padding(
                          padding: getPadding(left: 8),
                          child: SizedBox(
                              height: getVerticalSize(36),
                              child: VerticalDivider(
                                  width: getHorizontalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: ColorConstant.whiteA700,
                                  indent: getHorizontalSize(4),
                                  endIndent: getHorizontalSize(4)))),
                      Spacer(),
                      CustomIconButton(
                          height: 36,
                          width: 36,
                          onTap: () {
                            onTapBtnSend(context);
                          },
                          child:
                              CustomImageView(svgPath: ImageConstant.imgSend))
                    ]))));
  }

  /// Navigates to the askAQuestionScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the askAQuestionScreen.
  onTapBtnSend(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.askAQuestionScreen);
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleft1(BuildContext context) {
    Navigator.pop(context);
  }
}
