import 'package:chatgtp/core/app_export.dart';
import 'package:chatgtp/widgets/custom_button.dart';
import 'package:chatgtp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class EnterNameFullScreen extends StatelessWidget {
  EnterNameFullScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController sooController = TextEditingController();

  TextEditingController yaaController = TextEditingController();

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
                  top: 25,
                ),
                child: Text(
                  "Tell us about you",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtNunitoSansSemiBold24,
                ),
              ),
              CustomTextFormField(
                focusNode: FocusNode(),
                autofocus: true,
                controller: sooController,
                hintText: "Soo",
                margin: getMargin(
                  left: 12,
                  top: 23,
                  right: 4,
                ),
              ),
              CustomTextFormField(
                focusNode: FocusNode(),
                autofocus: true,
                controller: yaaController,
                hintText: "yaa",
                margin: getMargin(
                  left: 12,
                  top: 24,
                  right: 4,
                ),
                textInputAction: TextInputAction.done,
              ),
              CustomButton(
                 onTap:(){
                       Navigator.pushNamed(context, AppRoutes.verifyPhoneScreen);
                    },
                height: getVerticalSize(
                  48,
                ),
                text: "Continue",
                margin: getMargin(
                  left: 8,
                  top: 16,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  286,
                ),
                margin: getMargin(
                  left: 27,
                  top: 27,
                  right: 29,
                  bottom: 5,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "By clicking \"Continue\" you agree to our ",
                        style: TextStyle(
                          color: ColorConstant.gray400,
                          fontSize: getFontSize(
                            14,
                          ),
                          fontFamily: 'Nunito Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: "Terms \n",
                        style: TextStyle(
                          color: ColorConstant.deepPurple800,
                          fontSize: getFontSize(
                            14,
                          ),
                          fontFamily: 'Nunito Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: "and confirm you're 18 years or older.",
                        style: TextStyle(
                          color: ColorConstant.gray400,
                          fontSize: getFontSize(
                            14,
                          ),
                          fontFamily: 'Nunito Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
