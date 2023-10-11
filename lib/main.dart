import 'package:expenses_tracker/theme.dart';
import 'package:flutter/material.dart';
import 'package:expenses_tracker/widgets/expenses.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:flutter/services.dart';
//********************************************************************************//
//                                Main Screen                                    //
//******************************************************************************//

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
);
var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 5, 99, 125),
);

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  // ]).then((fn) {
  // runApp(...);
  // });
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: darkTheme,
      theme: lightTheme,
      themeMode: ThemeMode.system,
      home: ShowCaseWidget(
          builder: Builder(builder: (context) => const Expenses())),
    ),
  );
}
