import 'package:chatgtp/core/app_export.dart';
import 'package:chatgtp/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomeScreenThreeScreen extends StatelessWidget {
  const WelcomeScreenThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray900,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            all: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgFile,
                height: getSize(
                  24,
                ),
                width: getSize(
                  24,
                ),
                margin: getMargin(
                  top: 18,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  181,
                ),
                margin: getMargin(
                  top: 25,
                ),
                child: Text(
                  "Welcome to\nChatGPT",
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtNunitoSansBold32,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 26,
                ),
                child: Text(
                  "Ask anything, get yout answer",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtNunitoSansBold16,
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.imgWarning,
                height: getVerticalSize(
                  20,
                ),
                width: getHorizontalSize(
                  23,
                ),
                margin: getMargin(
                  top: 59,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 10,
                ),
                child: Text(
                  "Limitations",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtNunitoSansBold20,
                ),
              ),
              SizedBox(
                width: double.maxFinite,
                child: Container(
                  margin: getMargin(
                    top: 40,
                  ),
                  padding: getPadding(
                    left: 38,
                    top: 12,
                    right: 38,
                    bottom: 12,
                  ),
                  decoration: AppDecoration.fillWhiteA70014.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: getHorizontalSize(
                          256,
                        ),
                        margin: getMargin(
                          bottom: 1,
                        ),
                        child: Text(
                          "May occasionally generate incorrect information",
                          maxLines: null,
                          textAlign: TextAlign.center,
                          style: AppStyle.txtNunitoSansRegular16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: double.maxFinite,
                child: Container(
                  margin: getMargin(
                    top: 16,
                  ),
                  padding: getPadding(
                    left: 44,
                    top: 12,
                    right: 44,
                    bottom: 12,
                  ),
                  decoration: AppDecoration.fillWhiteA70014.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: getHorizontalSize(
                          244,
                        ),
                        margin: getMargin(
                          bottom: 1,
                        ),
                        child: Text(
                          "May occasionally produce harmful instructions or biased content",
                          maxLines: null,
                          textAlign: TextAlign.center,
                          style: AppStyle.txtNunitoSansRegular16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: double.maxFinite,
                child: Container(
                  margin: getMargin(
                    top: 16,
                  ),
                  padding: getPadding(
                    left: 51,
                    top: 12,
                    right: 51,
                    bottom: 12,
                  ),
                  decoration: AppDecoration.fillWhiteA70014.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: getHorizontalSize(
                          231,
                        ),
                        margin: getMargin(
                          bottom: 1,
                        ),
                        child: Text(
                          "Limited knowledge of world and events after 2021",
                          maxLines: null,
                          textAlign: TextAlign.center,
                          style: AppStyle.txtNunitoSansRegular16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: getVerticalSize(
                  2,
                ),
                margin: getMargin(
                  top: 60,
                ),
                child: SmoothIndicator(
                  offset: 2,
                  count: 3,
                  size: Size.zero,
                  effect: ScrollingDotsEffect(
                    spacing: 12,
                    activeDotColor: ColorConstant.deepPurple100,
                    dotColor: ColorConstant.whiteA70033,
                    dotHeight: getVerticalSize(
                      2,
                    ),
                    dotWidth: getHorizontalSize(
                      28,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomButton(
          onTap:(){
             Navigator.pushNamed(context, AppRoutes.sugnUpScreen);
          },
          height: getVerticalSize(
            48,
          ),
          text: "Let’s Go",
          margin: getMargin(
            left: 20,
            right: 20,
            bottom: 23,
          ),
          fontStyle: ButtonFontStyle.NunitoSansBold18,
        ),
      ),
    );
  }
}
