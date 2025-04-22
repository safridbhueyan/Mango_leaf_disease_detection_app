import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mango_leaf_disease/routes/route_configs.dart';
import 'package:mango_leaf_disease/view/aboutUs_screen.dart';
import 'package:mango_leaf_disease/view/disease_screen.dart';
import 'package:mango_leaf_disease/view/login_screen.dart';
import 'package:mango_leaf_disease/view_model/demo.dart';
import 'package:mango_leaf_disease/view_model/symtom_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
            // home: DiseaseScreen(),
            //  LoginScreen(),

            // AboutusScreen(),
            //  LoginScreen(),
            // HomeScreen(),
          );
        },
      ),
    );
  }
}
