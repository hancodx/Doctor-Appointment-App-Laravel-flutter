import 'package:flutter/material.dart';
import 'package:doctor_app/utils/text.dart';
import 'package:doctor_app/components/login_form.dart';
import 'package:doctor_app/components/social_button.dart';
import 'package:doctor_app/utils/config.dart';

class AuthPage extends StatefulWidget {
     const AuthPage({Key? key}) : super(key: key);

     @override
     State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
     // Créez une instance de Config
     Config config = Config();
     bool isSignIn = true; // Assurez-vous de déclarer cette variable si ce n'est pas déjà fait

     @override
     Widget build(BuildContext context) {
          // Initialisez l'instance de Config
          config.init(context);

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
                                   Text(
                                        AppText.enText['welcome_text']!,
                                        style: const TextStyle(
                                             fontSize: 36,
                                             fontWeight: FontWeight.bold,
                                        ),
                                   ),
                                   Config.spaceSmall,
                                   Text(
                                        AppText.enText['signIn_text']!,
                                        style: const TextStyle(
                                             fontSize: 24,
                                             fontWeight: FontWeight.normal,
                                        ),
                                   ),
                                   Config.spaceSmall,
                                   const LoginForm(),
                                   Center(
                                        child: TextButton(
                                             onPressed: () {},
                                             child: Text(
                                             AppText.enText['forgot-password']!,
                                                  style: const TextStyle(
                                                       fontSize: 16,
                                                       fontWeight: FontWeight.bold,
                                                       color: Color(0xFF3077D8),
                                                  ),
                                             ),
                                        ),
                                   ),

                                   // Ajoutez l'option de connexion avec les médias sociaux
                                   const Spacer(),
                                   Center(
                                        child: Text(
                                             AppText.enText['social-login']!,
                                             style: const TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.normal,
                                                  color: Color(0xFF888888),
                                             ),
                                        ),
                                   ),

                                   Config.spaceSmall,
                                   Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: const <Widget>[
                                             SocialButton(social: 'google'),
                                             SocialButton(social: 'facebook'),
                                        ],
                                   ),
                                   Config.spaceSmall,
                                   Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                             Text(
                                                  isSignIn
                                                       ? AppText.enText['signUp_text']!
                                                       : AppText.enText['registered_text']!,
                                                  style: TextStyle(
                                                       fontSize: 16,
                                                       fontWeight: FontWeight.normal,
                                                       color: Colors.grey.shade500,
                                                  ),
                                             ),
                                             TextButton(
                                                  onPressed: () {
                                                       setState(() {
                                                            isSignIn = !isSignIn;
                                                       });
                                                  },
                                                  child: Text(
                                                       isSignIn ? 'Sign Up' : 'Sign In',
                                                       style: const TextStyle(
                                                            fontSize: 16,
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.black,
                                                       ),
                                                  ),
                                             )
                                        ],
                                   )
                              ],
                         ),
                    ),
               ),
          );
     }
}
