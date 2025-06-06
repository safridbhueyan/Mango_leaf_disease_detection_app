import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mango_leaf_disease/firebase_options.dart';
import 'package:mango_leaf_disease/routes/route_configs.dart';
import 'package:mango_leaf_disease/view_model/auth_provider.dart';
import 'package:mango_leaf_disease/view_model/imagePicker_provider.dart';
import 'package:mango_leaf_disease/view_model/symtom_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await ScreenUtil.ensureScreenSize();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const double deviceWidth = 402.0;
  static const double deviceHeight = 874.0;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<SymtomProvider>(create: (_) => SymtomProvider()),
        ChangeNotifierProvider<AuthServiceProvider>(
          create: (_) => AuthServiceProvider(),
        ),
        ChangeNotifierProvider<ImagepickerProvider>(
          create: (_) => ImagepickerProvider(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(deviceWidth, deviceHeight),
        minTextAdapt: true,
        ensureScreenSize: true,
        builder: (context, child) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Mango Leaf disease detector',
            routerConfig: RouteConfig().goRouter,
          );
        },
      ),
    );
  }
}
