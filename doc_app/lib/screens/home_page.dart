import 'package:flutter/material.dart';
import 'package:doctor_app/utils/config.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
     const HomePage({Key? key}) : super(key: key);

     @override
     State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
     Map<String, dynamic> user = {};  // Assurez-vous d'avoir cette déclaration
     List<Map<String, dynamic>> medCat = [
          {
               "icon": FontAwesomeIcons.userMd,
               "category": "General",
          },
          {
               "icon": FontAwesomeIcons.heartbeat,
               "category": "Cardiology",
          },
          {
               "icon": FontAwesomeIcons.lungs,
               "category": "Respirations",
          },
          {
               "icon": FontAwesomeIcons.handHoldingMedical,
               "category": "Dermatology",
          },
          {
               "icon": FontAwesomeIcons.tooth,
               "category": "Dental",
          },
     ];

     @override
     Widget build(BuildContext context) {
          return Scaffold(
               body: Padding(
                    padding: const EdgeInsets.symmetric(
                         horizontal: 15,
                         vertical: 15,
                    ),
                    child: SafeArea(
                         child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                   Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                             Text(
                                                  'hanadi',
                                                  style: const TextStyle(
                                                       fontSize: 24,
                                                       fontWeight: FontWeight.bold,
                                                  ),
                                             ),
                                             const SizedBox(
                                                  child: CircleAvatar(
                                                       radius: 30,
                                                       backgroundImage: AssetImage('assets/user.jpg'),
                                                  ),
                                             ),
                                        ],
                                   ),
                                   Config.spaceMedium,
                                   const Text(
                                        'Category',
                                        style: TextStyle(
                                             fontSize: 16,
                                             fontWeight: FontWeight.bold,
                                        ),
                                   ),
                                   Config.spaceSmall,
					
							SizedBox(
								height: Config.heightSize * 0.05,
								child: ListView(
									scrollDirection: Axis.horizontal,
									children:
										List<Widget>.generate(medCat.length, (index) {
									return Card(
										margin: const EdgeInsets.only(right: 20),
										color: Config.primaryColor,
										child: Padding(
										padding: const EdgeInsets.symmetric(
											horizontal: 15, vertical: 10),
										child: Row(
										mainAxisAlignment:
											MainAxisAlignment.spaceAround,
										children: <Widget>[
											FaIcon(
											medCat[index]['icon'],
											color: Colors.white,
											),
											const SizedBox(
											width: 20,
											),
											Text(
											medCat[index]['category'],
											style: const TextStyle(
												fontSize: 16,
												color: Colors.white,
											),
											),
										],
										),
										),
									);
									}),
								),
							),
							Config.spaceSmall,
							const Text(
								'Appointment Today',
								style: TextStyle(
									fontSize: 16,
									fontWeight: FontWeight.bold,
								),
							),
							Config.spaceSmall,
						],
					),
                    ),
               ),
          );
     }
}
