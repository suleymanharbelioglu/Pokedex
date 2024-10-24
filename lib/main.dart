import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 732),
      child: MaterialApp(
        theme: ThemeData.dark().copyWith(
          textTheme: GoogleFonts.lateefTextTheme(),
        ),
        debugShowCheckedModeBanner: false,
        title: 'Pokemon List',
        home: const HomePage(),
      ),
    );
  }
}
