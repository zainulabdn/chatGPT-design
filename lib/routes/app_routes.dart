import 'package:flutter/material.dart';
import 'package:chatgtp/presentation/card_screen/card_screen.dart';
import 'package:chatgtp/presentation/welcome_screen_two_screen/welcome_screen_two_screen.dart';
import 'package:chatgtp/presentation/welcome_screen_three_screen/welcome_screen_three_screen.dart';
import 'package:chatgtp/presentation/sugn_up_screen/sugn_up_screen.dart';
import 'package:chatgtp/presentation/enter_screen/enter_screen.dart';
import 'package:chatgtp/presentation/enter_password_screen/enter_password_screen.dart';
import 'package:chatgtp/presentation/enter_name_screen/enter_name_screen.dart';
import 'package:chatgtp/presentation/enter_name_full_screen/enter_name_full_screen.dart';
import 'package:chatgtp/presentation/verify_phone_screen/verify_phone_screen.dart';
import 'package:chatgtp/presentation/verify_phone_full_screen/verify_phone_full_screen.dart';
import 'package:chatgtp/presentation/enter_code_screen/enter_code_screen.dart';
import 'package:chatgtp/presentation/enter_code_full_screen/enter_code_full_screen.dart';
import 'package:chatgtp/presentation/app_screen/app_screen.dart';
import 'package:chatgtp/presentation/empty_conversation_screen/empty_conversation_screen.dart';
import 'package:chatgtp/presentation/dashboard_screen/dashboard_screen.dart';
import 'package:chatgtp/presentation/start_a_conversation_screen/start_a_conversation_screen.dart';
import 'package:chatgtp/presentation/ask_a_question_screen/ask_a_question_screen.dart';
import 'package:chatgtp/presentation/buffer_screen/buffer_screen.dart';
import 'package:chatgtp/presentation/get_an_answer_screen/get_an_answer_screen.dart';
import 'package:chatgtp/presentation/dashboard_one_screen/dashboard_one_screen.dart';
import 'package:chatgtp/presentation/settings_screen/settings_screen.dart';
import 'package:chatgtp/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String cardScreen = '/card_screen';

  static const String welcomeScreenTwoScreen = '/welcome_screen_two_screen';

  static const String welcomeScreenThreeScreen = '/welcome_screen_three_screen';

  static const String sugnUpScreen = '/sugn_up_screen';

  static const String enterScreen = '/enter_screen';

  static const String enterPasswordScreen = '/enter_password_screen';

  static const String enterNameScreen = '/enter_name_screen';

  static const String enterNameFullScreen = '/enter_name_full_screen';

  static const String verifyPhoneScreen = '/verify_phone_screen';

  static const String verifyPhoneFullScreen = '/verify_phone_full_screen';

  static const String enterCodeScreen = '/enter_code_screen';

  static const String enterCodeFullScreen = '/enter_code_full_screen';

  static const String appScreen = '/app_screen';

  static const String emptyConversationScreen = '/empty_conversation_screen';

  static const String dashboardScreen = '/dashboard_screen';

  static const String startAConversationScreen = '/start_a_conversation_screen';

  static const String askAQuestionScreen = '/ask_a_question_screen';

  static const String bufferScreen = '/buffer_screen';

  static const String getAnAnswerScreen = '/get_an_answer_screen';

  static const String dashboardOneScreen = '/dashboard_one_screen';

  static const String settingsScreen = '/settings_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    cardScreen: (context) => CardScreen(),
    welcomeScreenTwoScreen: (context) => WelcomeScreenTwoScreen(),
    welcomeScreenThreeScreen: (context) => WelcomeScreenThreeScreen(),
    sugnUpScreen: (context) => SugnUpScreen(),
    enterScreen: (context) => EnterScreen(),
    enterPasswordScreen: (context) => EnterPasswordScreen(),
    enterNameScreen: (context) => EnterNameScreen(),
    enterNameFullScreen: (context) => EnterNameFullScreen(),
    verifyPhoneScreen: (context) => VerifyPhoneScreen(),
    verifyPhoneFullScreen: (context) => VerifyPhoneFullScreen(),
    enterCodeScreen: (context) => EnterCodeScreen(),
    enterCodeFullScreen: (context) => EnterCodeFullScreen(),
    appScreen: (context) => AppScreen(),
    emptyConversationScreen: (context) => EmptyConversationScreen(),
    dashboardScreen: (context) => DashboardScreen(),
    startAConversationScreen: (context) => StartAConversationScreen(),
    askAQuestionScreen: (context) => AskAQuestionScreen(),
    bufferScreen: (context) => BufferScreen(),
    getAnAnswerScreen: (context) => GetAnAnswerScreen(),
    dashboardOneScreen: (context) => DashboardOneScreen(),
    settingsScreen: (context) => SettingsScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
