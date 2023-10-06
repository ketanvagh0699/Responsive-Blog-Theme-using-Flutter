import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:news/constants.dart';
import 'package:news/screens/auth/login_screen.dart';
import 'package:news/screens/cart/cart_screen.dart';
import 'package:news/screens/contact/contact_screen.dart';
import 'package:news/screens/solutions/solutions_screen.dart';
import 'controllers/auth_controller.dart';
import 'controllers/theme_controller.dart';
import 'screens/about_us/about_us.dart';
import 'screens/main/main_screen.dart';
import 'ulits/app_theme/app_theme.dart';
import 'ulits/size_config.dart';

Future<void> main() async {
  if (kIsWeb)
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyAwqeLxZC5_wI4y3O3ewjXFPe3qEgQZTUk",
        appId: "1:33665215245:web:a46d83e1d8d874eeee1e44",
        messagingSenderId: "33665215245",
        projectId: "web-demo-pro-312b3",
        authDomain: "web-demo-pro-312b3.firebaseapp.com",
        storageBucket: "web-demo-pro-312b3.appspot.com",
      ),
    );
  else
    await Firebase.initializeApp();
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  GestureBinding.instance.resamplingEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  final ThemeController themeController = Get.put(ThemeController());
  AuthController authController = Get.put(AuthController());
  void initState() {
    super.initState();

    themeController.getSystemMode();
    // themeController.getEncryptMode();
  }

  // @override
  // void didUpdateWidget(covariant MyApp oldWidget) {
  //   super.didUpdateWidget(oldWidget);
  //   themeController.getSystemMode();
  // }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return GetMaterialApp(
          scrollBehavior: MyCustomScrollBehavior(),
          debugShowCheckedModeBanner: false,
          title: 'Propertise',
          theme: MyThemes.lightTheme,
          darkTheme: MyThemes.darkTheme,
          themeMode: themeController.themeMode.value,

          initialRoute: "/",
          routes: {
            AppRoutes.home: (_) => MainScreen(),
            AppRoutes.whyPropertise: (_) => WhyPropertiseUs(),
            AppRoutes.solutions: (_) => SolutionsScreen(),
            AppRoutes.contact: (_) => ContactScreen(),
            AppRoutes.comingSoon: (_) => ComingSoonScreen(),
            AppRoutes.login: (_) => LoginScreen(),
          },
          // home: MainMenu(title: "Hello world"),
        );
      });
    });
  }
}
