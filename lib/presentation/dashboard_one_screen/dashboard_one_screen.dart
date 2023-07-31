import 'package:chatgtp/core/app_export.dart';
import 'package:chatgtp/widgets/app_bar/appbar_image.dart';
import 'package:chatgtp/widgets/app_bar/appbar_title.dart';
import 'package:chatgtp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class DashboardOneScreen extends StatelessWidget {
  const DashboardOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray900,
        appBar: CustomAppBar(
          height: getVerticalSize(
            74,
          ),
          leadingWidth: 40,
          leading: AppbarImage(
            height: getSize(
              20,
            ),
            width: getSize(
              20,
            ),
            svgPath: ImageConstant.imgComputer,
            margin: getMargin(
              left: 20,
              top: 17,
              bottom: 18,
            ),
          ),
          title: AppbarTitle(
            text: "New Chat",
            margin: getMargin(
              left: 16,
            ),
          ),
          actions: [
            AppbarImage(
              onTap:(){
                 Navigator.pushNamed(context, AppRoutes.askAQuestionScreen);
              },
              height: getVerticalSize(
                12,
              ),
              width: getHorizontalSize(
                6,
              ),
              svgPath: ImageConstant.imgArrowrightWhiteA700,
              margin: getMargin(
                left: 20,
                top: 22,
                right: 20,
                bottom: 21,
              ),
            ),
          ],
        ),
        body: Center(
          child: Container(
            width: double.maxFinite,
            padding: getPadding(
              top: 26,
              bottom: 26,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 20,
                    right: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgComputer,
                        height: getSize(
                          20,
                        ),
                        width: getSize(
                          20,
                        ),
                        margin: getMargin(
                          bottom: 1,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 16,
                        ),
                        child: Text(
                          "What is a neural network?",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtNunitoSansBold16,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        height: getVerticalSize(
                          12,
                        ),
                        width: getHorizontalSize(
                          2,
                        ),
                        margin: getMargin(
                          top: 5,
                          bottom: 4,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.whiteA700,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              6,
                            ),
                          ),
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgArrowrightWhiteA700,
                        height: getVerticalSize(
                          12,
                        ),
                        width: getHorizontalSize(
                          6,
                        ),
                        margin: getMargin(
                          left: 28,
                          top: 5,
                          bottom: 4,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 20,
                      top: 28,
                    ),
                    child: Text(
                      "Previous 7 Days",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtNunitoSansRegular14Deeppurple400,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 20,
                    top: 26,
                    right: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgComputer,
                        height: getSize(
                          20,
                        ),
                        width: getSize(
                          20,
                        ),
                        margin: getMargin(
                          bottom: 1,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 16,
                        ),
                        child: Text(
                          "Create creative content",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtNunitoSansBold16,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        height: getVerticalSize(
                          12,
                        ),
                        width: getHorizontalSize(
                          2,
                        ),
                        margin: getMargin(
                          top: 5,
                          bottom: 4,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.whiteA700,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              6,
                            ),
                          ),
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgArrowrightWhiteA700,
                        height: getVerticalSize(
                          12,
                        ),
                        width: getHorizontalSize(
                          6,
                        ),
                        margin: getMargin(
                          left: 28,
                          top: 5,
                          bottom: 4,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 20,
                    top: 44,
                    right: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgComputer,
                        height: getSize(
                          20,
                        ),
                        width: getSize(
                          20,
                        ),
                        margin: getMargin(
                          bottom: 1,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 16,
                        ),
                        child: Text(
                          "how to use a hammer",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtNunitoSansBold16,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        height: getVerticalSize(
                          12,
                        ),
                        width: getHorizontalSize(
                          2,
                        ),
                        margin: getMargin(
                          top: 5,
                          bottom: 4,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.whiteA700,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              6,
                            ),
                          ),
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgArrowrightWhiteA700,
                        height: getVerticalSize(
                          12,
                        ),
                        width: getHorizontalSize(
                          6,
                        ),
                        margin: getMargin(
                          left: 28,
                          top: 5,
                          bottom: 4,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: getMargin(
                      top: 5,
                      right: 48,
                    ),
                    padding: getPadding(
                      left: 12,
                      top: 8,
                      right: 12,
                      bottom: 8,
                    ),
                    decoration: AppDecoration.outlineWhiteA70019.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgEdit,
                              height: getSize(
                                16,
                              ),
                              width: getSize(
                                16,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 12,
                              ),
                              child: Text(
                                "Edit",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtNunitoSansBold12,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: getPadding(
                            top: 15,
                          ),
                          child: Row(
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgFrame,
                                height: getSize(
                                  16,
                                ),
                                width: getSize(
                                  16,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 12,
                                ),
                                child: Text(
                                  "Delete",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtNunitoSansBold12Red200,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: double.maxFinite,
                  child: Container(
                    margin: getMargin(
                      bottom: 7,
                    ),
                    padding: getPadding(
                      left: 20,
                      top: 27,
                      right: 20,
                      bottom: 27,
                    ),
                    decoration: AppDecoration.outlineWhiteA70033,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgLinearclear,
                              height: getSize(
                                20,
                              ),
                              width: getSize(
                                20,
                              ),
                              margin: getMargin(
                                bottom: 1,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 16,
                              ),
                              child: Text(
                                "Clear conversations",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtNunitoSansRegular16,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: getPadding(
                            top: 40,
                          ),
                          child: Row(
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgLinearupgrade,
                                height: getSize(
                                  20,
                                ),
                                width: getSize(
                                  20,
                                ),
                                margin: getMargin(
                                  bottom: 2,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 16,
                                ),
                                child: Text(
                                  "Upgrade to Plus",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtNunitoSansRegular16,
                                ),
                              ),
                              const Spacer(),
                              Container(
                                width: getHorizontalSize(
                                  46,
                                ),
                                margin: getMargin(
                                  top: 1,
                                  bottom: 1,
                                ),
                                padding: getPadding(
                                  left: 8,
                                  top: 1,
                                  right: 8,
                                  bottom: 1,
                                ),
                                decoration:
                                    AppDecoration.txtFillAmber100.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.txtCircleBorder10,
                                ),
                                child: Text(
                                  "NEW",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtNunitoSansRegular12Black900,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 39,
                          ),
                          child: Row(
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgMaximize,
                                height: getSize(
                                  20,
                                ),
                                width: getSize(
                                  20,
                                ),
                                margin: getMargin(
                                  bottom: 2,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 16,
                                ),
                                child: Text(
                                  "Updates & FAQ",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtNunitoSansRegular16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 39,
                          ),
                          child: Row(
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgSettings,
                                height: getSize(
                                  20,
                                ),
                                width: getSize(
                                  20,
                                ),
                                margin: getMargin(
                                  bottom: 2,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 16,
                                ),
                                child: Text(
                                  "Settings",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtNunitoSansRegular16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
