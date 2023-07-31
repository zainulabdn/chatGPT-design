import 'package:chatgtp/core/app_export.dart';
import 'package:chatgtp/widgets/app_bar/appbar_image.dart';
import 'package:chatgtp/widgets/app_bar/appbar_subtitle.dart';
import 'package:chatgtp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class EmptyConversationScreen extends StatelessWidget {
  const EmptyConversationScreen({Key? key}) : super(key: key);

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
                      onTapArrowleft(context);
                    }),
                title: AppbarSubtitle(
                    text: "New Chat ", margin: getMargin(left: 18))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 20, right: 20, bottom: 61),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Padding(
                      padding: getPadding(top: 233),
                      child: Text("Ask anything, get yout answer",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtNunitoSansBold16WhiteA70066)),
                  Spacer(),
                  CustomImageView(
                      svgPath: ImageConstant.imgFrame11,
                      height: getVerticalSize(52),
                      width: getHorizontalSize(335),
                      radius: BorderRadius.circular(getHorizontalSize(8)),
                      onTap: () {
                        onTapImgFrameeleven(context);
                      })
                ]))));
  }

  /// Navigates to the startAConversationScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the startAConversationScreen.
  onTapImgFrameeleven(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.startAConversationScreen);
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
