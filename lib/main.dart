import 'package:flutter/material.dart';
import 'package:portfolio/screens/main_screen.dart';
import 'package:portfolio/theme/theme_manager.dart';
import 'package:provider/provider.dart';

void main() {
  return runApp(ChangeNotifierProvider<ThemeNotifier>(
    create: (_) => ThemeNotifier(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
      builder: (context, theme, _) => MaterialApp(
        theme: theme.getTheme(),
        home: MainScreen(
          children: [],
        ),
        // home: Scaffold(
        //   appBar: AppBar(
        //     title: Text('Hybrid Theme'),
        //   ),
        //   body: Row(
        //     children: [
        //       Container(
        //         child: FlatButton(
        //           onPressed: () => {
        //             print('Set Light Theme'),
        //             theme.setLightMode(),
        //           },
        //           child: Text('Set Light Theme'),
        //         ),
        //       ),
        //       Container(
        //         child: FlatButton(
        //           onPressed: () => {
        //             print('Set Dark theme'),
        //             theme.setDarkMode(),
        //           },
        //           child: Text('Set Dark theme'),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
