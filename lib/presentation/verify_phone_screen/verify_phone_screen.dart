import 'package:chatgtp/core/app_export.dart';
import 'package:chatgtp/widgets/custom_button.dart';
import 'package:chatgtp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class VerifyPhoneScreen extends StatelessWidget {
  VerifyPhoneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController phonenumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray900,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 16,
            top: 44,
            right: 16,
            bottom: 44,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                alignment: Alignment.center,
              ),
              Padding(
                padding: getPadding(
                  left: 23,
                  top: 25,
                ),
                child: Text(
                  "Verify your phone number",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtNunitoSansSemiBold24,
                ),
              ),
              Container(
                margin: getMargin(
                  left: 8,
                  top: 23,
                  right: 9,
                ),
                padding: getPadding(
                  left: 24,
                  top: 13,
                  right: 24,
                  bottom: 13,
                ),
                decoration: AppDecoration.outlineGray90033.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgComponent1,
                      height: getVerticalSize(
                        15,
                      ),
                      width: getHorizontalSize(
                        21,
                      ),
                      margin: getMargin(
                        top: 4,
                        bottom: 4,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 10,
                        bottom: 1,
                      ),
                      child: Text(
                        "U.S.",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtNunitoSansRegular16,
                      ),
                    ),
                    Spacer(),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowright,
                      height: getSize(
                        20,
                      ),
                      width: getSize(
                        20,
                      ),
                      margin: getMargin(
                        top: 1,
                        bottom: 1,
                      ),
                    ),
                  ],
                ),
              ),
              CustomTextFormField(
                focusNode: FocusNode(),
                autofocus: true,
                controller: phonenumberController,
                hintText: "+1  (345) 123-4567",
                margin: getMargin(
                  left: 8,
                  top: 24,
                  right: 9,
                ),
                textInputAction: TextInputAction.done,
              ),
              CustomButton(
                 onTap:(){
                       Navigator.pushNamed(context, AppRoutes.enterCodeScreen);
                    },
                height: getVerticalSize(
                  48,
                ),
                text: "Continue",
                margin: getMargin(
                  left: 8,
                  top: 32,
                  bottom: 5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
