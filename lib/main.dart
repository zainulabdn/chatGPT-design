import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:chatgtp/routes/app_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        visualDensity: VisualDensity.standard,
      ),
      title: 'chatgtp',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.appScreen,
      routes: AppRoutes.routes,
    );
  }
}
