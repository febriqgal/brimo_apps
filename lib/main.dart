import 'package:brimo/app/pages/login_page/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: const ColorScheme.light(
          primary: Color(0xFF00A8FF),
          secondary: Color.fromARGB(255, 255, 255, 255),
          surface: Color(0xFFF5F5F5),
          background: Color(0xFFF5F5F5),
          error: Color(0xFFB00020),
          onPrimary: Color.fromARGB(255, 255, 255, 255),
          onSecondary: Color(0xFFF5F5F5),
          onBackground: Color(0xFFF5F5F5),
          onError: Color(0xFFF5F5F5),
          brightness: Brightness.light,
        ),
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
            color: Color(0xFF00A8FF),
            size: 24,
          ),
          elevation: 1,
          shadowColor: Colors.black,
          surfaceTintColor: Colors.white,
        ),
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: const LoginView(),
    );
  }
}
