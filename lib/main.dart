import 'package:chat_app/Screens/chat_screen.dart';
import 'package:chat_app/Screens/login_screen.dart';
import 'package:chat_app/Screens/registeration_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ITIChat());
}

class ITIChat extends StatelessWidget {
  const ITIChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        ChatPage.id: (context) => ChatPage(),
        'LoginPage': (context) => LoginPage(),
        'RegisterPage': (context) => RegisterScreen(),
      },
      initialRoute: 'LoginPage',
      debugShowCheckedModeBanner: false,
    );
  }
}
