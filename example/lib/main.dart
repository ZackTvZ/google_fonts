import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts_tester/example_font_selection.dart';
import 'package:google_fonts_tester/example_simple.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
var textStyle = GoogleFonts.poppins();
print("text Style font family = ${textStyle.fontFamily}");
print("text Style fontFamilyFallback = ${textStyle.fontFamilyFallback?.first}");
var textStyle2 = GoogleFonts.getFont(textStyle.fontFamilyFallback?.first??"");
print("text Style2 font family = ${textStyle2.fontFamily}");
print("text Style2 fontFamilyFallback = ${textStyle2.fontFamilyFallback?.first}");

  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light(useMaterial3: true),
      home: DefaultTabController(
        animationDuration: Duration.zero,
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Google Fonts Demo'),
            bottom: const TabBar(
              tabs: <Widget>[
                Tab(text: 'Simple'),
                Tab(text: 'Select a font'),
              ],
            ),
          ),
          body: const TabBarView(
            children: <Widget>[
              ExampleSimple(),
              ExampleFontSelection(),
            ],
          ),
        ),
      ),
    );
  }
}
