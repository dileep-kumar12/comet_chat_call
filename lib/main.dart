import 'package:cometchat_calls_uikit/cometchat_calls_uikit.dart';
import 'package:cometchat_flutter_sample_app/firebase/firebase_service.dart';
import 'package:cometchat_flutter_sample_app/guard_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import 'firebase_config.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //     options: DefaultFirebaseConfig.platformOptions
  // );
  FirebaseService().init();


  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CometChat sample app',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        Translations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: const [
        Locale('en', ''),
        Locale('hi', ''),
        Locale('ar', ''),
        Locale('de', ''),
        Locale('es', ''),
        Locale('fr', ''),
        Locale('ms', ''),
        Locale('pt', ''),
        Locale('ru', ''),
        Locale('sv', ''),
        Locale('zh', ''),
        Locale('hu', ''),
      ],
      home: GuardScreen(
        key: CallNavigationContext.navigatorKey,
      ),
    );
  }
}
