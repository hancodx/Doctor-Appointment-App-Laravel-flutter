import 'package:doctor_app/utils/config.dart';
import 'package:doctor_app/screens/auth_page.dart';
import 'package:doctor_app/main_layout.dart';
import 'package:flutter/material.dart';



void main() {
     runApp(const MyApp());
}

class MyApp extends StatelessWidget {
     const MyApp({Key? key}) : super(key: key);

     // C'est pour la navigation
     static final navigatorKey = GlobalKey<NavigatorState>();

     @override
     Widget build(BuildContext context) {
          return MaterialApp(
               navigatorKey: navigatorKey,
               title: 'Flutter Doctor ',
               theme: ThemeData(
                    // Pré-définir la décoration des entrées
                    inputDecorationTheme: const InputDecorationTheme(
                         focusColor: Config.primaryColor,
                         border: Config.outlinedBorder,
                         focusedBorder: Config.focusBorder,
                         errorBorder: Config.errorBorder,
                         enabledBorder: Config.outlinedBorder,
                         floatingLabelStyle: TextStyle(color: Config.primaryColor),
                         prefixIconColor: Colors.black38,
                    ),
										scaffoldBackgroundColor: Colors.white,
												 bottomNavigationBarTheme: BottomNavigationBarThemeData(
												 backgroundColor: Config.primaryColor,
												 selectedItemColor: Colors.white,
												 showSelectedLabels: true,
												 showUnselectedLabels: false,
												 unselectedItemColor: Colors.grey.shade700,
												 elevation: 10,
												 type: BottomNavigationBarType.fixed,
										),
               ),
               initialRoute: '/',
							 routes: {
										'/': (context) => const AuthPage(),
										'main': (context) => const MainLayout(),
							 },
          );
     }
}

