import 'package:chatgtp/core/app_export.dart';
import 'package:chatgtp/widgets/app_bar/appbar_image.dart';
import 'package:chatgtp/widgets/app_bar/appbar_subtitle.dart';
import 'package:chatgtp/widgets/app_bar/custom_app_bar.dart';
import 'package:chatgtp/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class GetAnAnswerScreen extends StatelessWidget {
  const GetAnAnswerScreen({Key? key}) : super(key: key);

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
                      onTapArrowleft4(context);
                    }),
                title: AppbarSubtitle(
                    text: "What is a neural network?",
                    margin: getMargin(left: 18))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 20, top: 39, right: 20, bottom: 39),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              width: getHorizontalSize(267),
                              margin: getMargin(left: 68),
                              padding: getPadding(
                                  left: 12, top: 11, right: 12, bottom: 11),
                              decoration: AppDecoration.fillDeeppurple500
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder23),
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
                                            style: AppStyle
                                                .txtNunitoSansRegular16))
                                  ]))),
                      Container(
                          margin: getMargin(top: 32, right: 40),
                          padding: getPadding(
                              left: 12, top: 11, right: 12, bottom: 11),
                          decoration: AppDecoration.fillGray70033.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgRectangle11,
                                    height: getSize(24),
                                    width: getSize(24),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(10)),
                                    margin: getMargin(bottom: 312)),
                                Expanded(
                                    child: Container(
                                        width: getHorizontalSize(240),
                                        margin: getMargin(
                                            left: 5, top: 1, right: 1),
                                        child: Text(
                                            "A neural network is a computational model inspired by the structure and functioning of the human brain. It consists of interconnected artificial neurons, or nodes, organized in layers. Each neuron receives inputs, performs a mathematical operation on those inputs, and produces an output.  Neural networks are designed to learn and recognize patterns from data. They can be trained on labeled examples to adjust their internal parameters (weights and biases) and improve their ability to make accurate predictions or classifications.",
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtNunitoSansRegular14)))
                              ])),
                      Padding(
                          padding: getPadding(top: 12),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgBag,
                                    height: getVerticalSize(20),
                                    width: getHorizontalSize(56)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgGroup3,
                                    height: getSize(12),
                                    width: getSize(12),
                                    margin:
                                        getMargin(left: 40, top: 4, bottom: 4)),
                                Padding(
                                    padding: getPadding(left: 12),
                                    child: Text("Copy",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtNunitoSansBold14))
                              ])),
                      CustomButton(
                          height: getVerticalSize(33),
                          width: getHorizontalSize(186),
                          text: "Regenerate response",
                          margin: getMargin(top: 39),
                          variant: ButtonVariant.OutlineWhiteA70033,
                          shape: ButtonShape.RoundedBorder4,
                          padding: ButtonPadding.PaddingT6,
                          fontStyle: ButtonFontStyle.NunitoSansBold14,
                          prefixWidget: Container(
                              margin: getMargin(right: 10),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgRefresh)),
                          onTap: () {
                            onTapRegenerate(context);
                          },
                          alignment: Alignment.center),
                      CustomImageView(
                          svgPath: ImageConstant.imgFrame14,
                          height: getVerticalSize(52),
                          width: getHorizontalSize(335),
                          radius: BorderRadius.circular(getHorizontalSize(8)),
                          margin: getMargin(top: 13, bottom: 5))
                    ]))));
  }

  /// Navigates to the bufferScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the bufferScreen.
  onTapRegenerate(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bufferScreen);
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleft4(BuildContext context) {
    Navigator.pop(context);
  }
}
