import 'package:chop_shop_test/bloc_provider.dart';
import 'package:chop_shop_test/colors.dart';
import 'package:chop_shop_test/main_menu/main_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// The app is wrapped by a [BlocProvider]. This allows the child widgets
/// to access other components throughout the hierarchy without the need
/// to pass those references around.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return BlocProvider(
      platform: Theme.of(context).platform,
      child: MaterialApp(
        title: 'History & Future of Everything',
        theme: ThemeData(
          backgroundColor: background,
          scaffoldBackgroundColor: background,
        ),
        home: MenuPage(),
      ),
    );
  }
}

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: null, body: MainMenuWidget());
  }
}

void main() => runApp(MyApp());
