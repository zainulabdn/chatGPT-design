import 'package:chatgtp/core/app_export.dart';
import 'package:chatgtp/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class EnterCodeFullScreen extends StatelessWidget {
  const EnterCodeFullScreen({Key? key})
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
            left: 24,
            top: 44,
            right: 24,
            bottom: 44,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgChatgpt1,
                height: getSize(
                  44,
                ),
                width: getSize(
                  44,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 23,
                ),
                child: Text(
                  "Enter code",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtNunitoSansSemiBold24,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 18,
                ),
                child: Text(
                  "Please enter the code we just sent you.",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtNunitoSansRegular14Gray400,
                ),
              ),
              CustomButton(
                height: getVerticalSize(
                  50,
                ),
                text: "658424",
                margin: getMargin(
                  top: 22,
                ),
                variant: ButtonVariant.OutlineGray90033,
                padding: ButtonPadding.PaddingAll14,
                fontStyle: ButtonFontStyle.NunitoSansRegular16,
              ),
              Padding(
                padding: getPadding(
                  top: 16,
                  bottom: 5,
                ),
                child: Text(
                  "Resend code",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtNunitoSansRegular14Gray400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
