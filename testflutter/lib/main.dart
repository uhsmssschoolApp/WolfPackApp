import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testflutter/dorianchentesting.dart';
import 'package:testflutter/loading.dart';
import 'package:testflutter/more/feedback.dart';
import 'package:testflutter/more/notifications.dart';
import 'package:testflutter/pages/clubs.dart';
import 'package:testflutter/pages/home.dart';
import 'package:testflutter/studentutils/usacmessages.dart';
import 'package:testflutter/splash.dart';
import 'firestore.dart';
import 'more/resources.dart';
import 'pages/links.dart';
import 'pages/student.dart';
import 'themes/mythemes.dart';
import 'pages/more.dart';
import 'dorianchentesting.dart';

//firebase
import 'package:firebase_core/firebase_core.dart';

void main() async {
  runApp(MyApp());
  await init();
}

Future<void> init() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await fillList();
  await fillStream();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, _) {
        final themeProvider = Provider.of<ThemeProvider>(context);
        return MaterialApp(
          title: "testing",
          themeMode: themeProvider.themeMode,
          // do this later
          theme: MyThemes.lightTheme,
          darkTheme: MyThemes.darkTheme,
          home: home(),
          debugShowCheckedModeBanner: false,
          routes: {
            "/home": (context) => home(),
            "/links": (context) => links(),
            "/student": (context) => student(),
            "/clubs": (context) => clubs(),
            "/more": (context) => more(),
            "/notifications": (context) => notifications(),
            "/resources": (context) => resources(),
            "/usacmessages": (context) => usacFeed(),
            "/testingpage": (context) => dorianTesting(),
            "/feedback": (context) => feedBack(),
            "/loading": (context) => loadingScreen(),
          },
        );
      });
}
