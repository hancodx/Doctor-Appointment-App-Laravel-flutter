import 'package:doctor_app/screens/appointment_page.dart';
import 'package:doctor_app/screens/home_page.dart';
import 'package:flutter/material.dart';

class MainLayout extends StatefulWidget {
     const MainLayout({Key? key}) : super(key: key);

     @override
     State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
     int currentPage = 0;
     final PageController _page = PageController();

     @override
     Widget build(BuildContext context) {
          return Scaffold(
               body: PageView(
                    controller: _page,
                    onPageChanged: ((value) {
                         setState(() {
                              currentPage = value;
                         });
                    }),
                    children: <Widget>[
                         HomePage(),
                         AppointmentPage(),
                    ],
               ),


			         //le menue (navbar)
               bottomNavigationBar: BottomNavigationBar(
                    currentIndex: currentPage,
                    onTap: (page) {
                         setState(() {
                              currentPage = page;
                              _page.animateToPage(
                                   page,
                                   duration: const Duration(milliseconds: 500),
                                   curve: Curves.easeInOut,
                              );
                         });
                    },
                    items: const <BottomNavigationBarItem>[
                         BottomNavigationBarItem(
                              icon: Icon(Icons.home),
                              label: 'Home',
                         ),
                         BottomNavigationBarItem(
                              icon: Icon(Icons.calendar_today),
                              label: 'Appointments',
                         ),
					              
                    ],
               ),
          );
     }
}
