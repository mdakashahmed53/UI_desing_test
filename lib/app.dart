import 'package:flutter/material.dart';
import 'package:whatsapp/home.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp/login_screen.dart';
import 'package:whatsapp/singup_screen.dart';

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
          routes: {
            '/':(context)=>Home(),
            '/logInScreen':(context)=>LogIn(),
            '/singUpScreen':(context)=>SingupScreen()
          },
          initialRoute: '/singUpScreen',
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
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)
                )
              )
            ),
            inputDecorationTheme: InputDecorationThemeData(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                gapPadding: 5
              ),
              hintStyle: TextStyle(
                fontSize: 14.sp
              )
            )
          ),
          
          title: 'WhatsApp Clone',
          
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
