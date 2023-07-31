import 'package:chatgtp/core/app_export.dart';
import 'package:chatgtp/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray900,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomButton(
                height: getVerticalSize(
                  64,
                ),
                text: "Settings",
                variant: ButtonVariant.FillGray900,
                shape: ButtonShape.Square,
                padding: ButtonPadding.PaddingT21,
                fontStyle: ButtonFontStyle.NunitoSansRegular16Gray300,
                prefixWidget: Container(
                  margin: getMargin(
                    right: 16,
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgArrowleftBlueGray100,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 20,
                  top: 31,
                ),
                child: Text(
                  "Theme",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtNunitoSansRegular16WhiteA700,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 20,
                  top: 45,
                ),
                child: Text(
                  "Add token OpenAI",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtNunitoSansRegular16WhiteA700,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 20,
                  top: 44,
                ),
                child: Text(
                  "Language",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtNunitoSansRegular16WhiteA700,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    left: 20,
                    top: 43,
                    right: 20,
                    bottom: 5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 4,
                          bottom: 5,
                        ),
                        child: Text(
                          "Monet theme",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtNunitoSansRegular16WhiteA700,
                        ),
                      ),
                      Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 0,
                        margin: EdgeInsets.all(0),
                        color: ColorConstant.deepPurple100,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusStyle.circleBorder16,
                        ),
                        child: Container(
                          height: getVerticalSize(
                            32,
                          ),
                          width: getHorizontalSize(
                            52,
                          ),
                          decoration: AppDecoration.fillDeeppurple100.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder16,
                          ),
                          child: Stack(
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgBrightness,
                                height: getVerticalSize(
                                  32,
                                ),
                                width: getHorizontalSize(
                                  40,
                                ),
                                alignment: Alignment.centerRight,
                              ),
                            ],
                          ),
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
