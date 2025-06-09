import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portafolio_project/firebase_options.dart';
import 'package:portafolio_project/routes.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBbrBokiG5SRpux-sApdIn0YlXVMscMC1w",
            authDomain: "portafolio-e67f0.firebaseapp.com",
            databaseURL: "https://portafolio-e67f0-default-rtdb.firebaseio.com",
            projectId: "portafolio-e67f0",
            storageBucket: "portafolio-e67f0.firebasestorage.app",
            messagingSenderId: "691187048995",
            appId: "1:691187048995:web:7c0ea5078461ec509d8796",
            measurementId: "G-8T8GJYCRP6"));
  } else
    GoogleFonts.config.allowRuntimeFetching = false;
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) => Routes.generateRoute(settings),
      initialRoute: '/',
    );
  }
}
