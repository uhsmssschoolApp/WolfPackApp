import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:fullscreen/fullscreen.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:testflutter/clubutils/clubviewmore.dart';
import 'package:testflutter/dorianchentesting.dart';
import 'package:testflutter/homeutils/viewmore.dart';
import 'package:testflutter/intro/intro.dart';
import 'package:testflutter/linksutil/editlinks.dart';
import 'package:testflutter/loading.dart';
import 'package:testflutter/more/faq.dart';
import 'package:testflutter/more/feedback.dart';
import 'package:testflutter/more/notifications.dart';
import 'package:testflutter/pages/clubs.dart';
import 'package:testflutter/pages/home.dart';
import 'package:testflutter/studentutils/usacmessages.dart';
// import 'package:testflutter/splash.dart';
import 'firestore.dart';
import 'more/resources.dart';
import 'pages/links.dart';
import 'pages/student.dart';
import 'themes/mythemes.dart';
import 'pages/more.dart';
import 'dorianchentesting.dart';

//firebase
import 'package:firebase_core/firebase_core.dart';

bool hasLaunchedOnce = false;

// void enterFullScreen(FullScreenMode fullScreenMode) async {
//   await FullScreen.enterFullScreen(fullScreenMode);
// }

void main() async {
  await init();
  // enterFullScreen(FullScreenMode.EMERSIVE);
  runApp(MyApp());
  print(FirebaseMessaging.instance.getToken().then((value) {
    print(value);
  }));
}

Future<void> init() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await fillList();
  await fillStream();
  await checkInit();

}

// check launch
Future<bool> checkInit() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  // prefs.clear();
  if (prefs.getBool("startupInit") == null) {
    // print("not init yet");
    prefs.setBool("startupInit", true);
    return true;
  } else {
    // print("init done");
    hasLaunchedOnce = true;
    return false;
  }
}

// bool test = false;
Widget initHome() {
  // print(hasLaunchedOnce);
  if (hasLaunchedOnce) {
    return const home();
  } else {
    return const IntroPage();
  }
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, _) {
        final themeProvider = Provider.of<ThemeProvider>(context);

        FirebaseMessaging.instance.requestPermission(); //FCM

        return MaterialApp(
          title: "wolfpackapp",
          themeMode: themeProvider.themeMode,
          // do this later
          theme: MyThemes.lightTheme,
          darkTheme: MyThemes.darkTheme,
          home: initHome(),
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
            "/intro": (context) => IntroPage(),
            "/faq": (context) => FaqPage(),
            "/viewmore": (context) => ViewMore(),
            "/editlinks": (context) => EditLinks(),
            "/clubviewmore": (context) => ClubViewMore(),
          },
        );
      });
}
