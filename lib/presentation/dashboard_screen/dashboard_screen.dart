import 'package:chatgtp/core/app_export.dart';
import 'package:chatgtp/widgets/app_bar/appbar_image.dart';
import 'package:chatgtp/widgets/app_bar/appbar_title.dart';
import 'package:chatgtp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key})
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
            56,
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
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            top: 18,
            bottom: 18,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Spacer(),
              SizedBox(
                width: double.maxFinite,
                child: Container(
                  margin: getMargin(
                    bottom: 15,
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
                            Spacer(),
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
    );
  }
}
