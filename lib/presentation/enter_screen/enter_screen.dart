import 'package:chatgtp/core/app_export.dart';
import 'package:chatgtp/widgets/custom_button.dart';
import 'package:chatgtp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class EnterScreen extends StatelessWidget {
  EnterScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray900,
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Container(
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
                    "Create your account",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtNunitoSansSemiBold24,
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    304,
                  ),
                  margin: getMargin(
                    left: 19,
                    top: 17,
                    right: 18,
                  ),
                  child: Text(
                    "Please note that phone verification is required for signup. Your number will only be used to verify your identity for security purposes.",
                    maxLines: null,
                    textAlign: TextAlign.center,
                    style: AppStyle.txtNunitoSansRegular12,
                  ),
                ),
                CustomTextFormField(
                  focusNode: FocusNode(),
                  autofocus: true,
                  controller: emailController,
                  hintText: "redcolor@gmail.com",
                  margin: getMargin(
                    left: 8,
                    top: 32,
                    right: 9,
                  ),
                  textInputType: TextInputType.emailAddress,
                ),
                CustomTextFormField(
                  focusNode: FocusNode(),
                  autofocus: true,
                  controller: passwordController,
                  hintText: "Password",
                  margin: getMargin(
                    left: 8,
                    top: 24,
                    right: 9,
                  ),
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.visiblePassword,
                  isObscureText: true,
                ),
                CustomButton(
                  height: getVerticalSize(
                    48,
                  ),
                  text: "Continue",
                  margin: getMargin(
                    left: 8,
                    top: 32,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 17,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Already have an account? ",
                          style: TextStyle(
                            color: ColorConstant.whiteA700,
                            fontSize: getFontSize(
                              14,
                            ),
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: "Log in",
                          style: TextStyle(
                            color: ColorConstant.deepPurple800,
                            fontSize: getFontSize(
                              14,
                            ),
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 20,
                    top: 34,
                    right: 12,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 9,
                          bottom: 9,
                        ),
                        child: SizedBox(
                          width: getHorizontalSize(
                            120,
                          ),
                          child: Divider(
                            height: getVerticalSize(
                              1,
                            ),
                            thickness: getVerticalSize(
                              1,
                            ),
                            color: ColorConstant.indigo50,
                          ),
                        ),
                      ),
                      Text(
                        "OR",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtNunitoSansRegular14Gray400,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 9,
                          bottom: 9,
                        ),
                        child: SizedBox(
                          width: getHorizontalSize(
                            120,
                          ),
                          child: Divider(
                            height: getVerticalSize(
                              1,
                            ),
                            thickness: getVerticalSize(
                              1,
                            ),
                            color: ColorConstant.indigo50,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 16,
                    top: 23,
                    right: 8,
                    bottom: 5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          margin: getMargin(
                            right: 12,
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
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgGoogle,
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
                                  left: 12,
                                  top: 1,
                                ),
                                child: Text(
                                  "Google",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtNunitoSansRegular16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: CustomButton(
                          height: getVerticalSize(
                            50,
                          ),
                          text: "Microsoft ",
                          margin: getMargin(
                            left: 12,
                          ),
                          variant: ButtonVariant.OutlineGray90033,
                          padding: ButtonPadding.PaddingT14,
                          fontStyle: ButtonFontStyle.NunitoSansRegular16,
                          prefixWidget: Container(
                            margin: getMargin(
                              right: 12,
                            ),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgPlus,
                            ),
                          ),
                        ),
                      ),
                    ],
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
