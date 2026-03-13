import 'package:flutter/material.dart';
import 'package:whatsapp/home.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MaterialApp(
          theme: ThemeData(
            appBarTheme: AppBarThemeData(
              centerTitle: true,
              foregroundColor: Colors.black,
              backgroundColor: Colors.blue,
            ),
            scaffoldBackgroundColor: Colors.black.withOpacity(0.1),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black87,
                backgroundColor: Colors.white
              )
            )
          ),
          title: 'WhatsApp Clone',
          home: Home(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
