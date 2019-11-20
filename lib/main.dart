import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:shadow_run_mobile/providers/users.dart';

/** Screens */
import 'package:shadow_run_mobile/screens/profile.dart';
import 'package:shadow_run_mobile/screens/visibility_list.dart';
import './screens/status_and_visibility.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(new MyApp());
  });
}
class MyApp extends StatelessWidget {
  static final Map<int, Color> primaryColor = {
    50: Color.fromRGBO(55, 71, 79, .1),
    100: Color.fromRGBO(55, 71, 79, .2),
    200: Color.fromRGBO(55, 71, 79, .3),
    300: Color.fromRGBO(55, 71, 79, .4),
    400: Color.fromRGBO(55, 71, 79, .5),
    500: Color.fromRGBO(55, 71, 79, .6),
    600: Color.fromRGBO(55, 71, 79, .7),
    700: Color.fromRGBO(55, 71, 79, .8),
    800: Color.fromRGBO(155, 71, 79, .9),
    900: Color.fromRGBO(55, 71, 79, 1),
  };

  static final MaterialColor primaryColorCustom = MaterialColor(0xff37474f, primaryColor);

  static final Map<int, Color> secondaryColor = {
    50: Color.fromRGBO(2, 119, 189, .1),
    100: Color.fromRGBO(2, 119, 189, .2),
    200: Color.fromRGBO(2, 119, 189, .3),
    300: Color.fromRGBO(2, 119, 189, .4),
    400: Color.fromRGBO(2, 119, 189, .5),
    500: Color.fromRGBO(2, 119, 189, .6),
    600: Color.fromRGBO(2, 119, 189, .7),
    700: Color.fromRGBO(2, 119, 189, .8),
    800: Color.fromRGBO(2, 119, 189, .9),
    900: Color.fromRGBO(2, 119, 189, 1),
  };

  static final MaterialColor secondaryColorCustom = MaterialColor(0xff0277bd, secondaryColor);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (ctx)=>Users(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: primaryColorCustom,
          secondaryHeaderColor:secondaryColorCustom,
        ),
        home: Profile(),
        routes: {
          StatusAndVisibility.routeName: (ctx) => StatusAndVisibility(),
          VisibilityList.routeName:(ctx)=>VisibilityList(),
        },
      ),
    );
  }
}
