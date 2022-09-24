// ignore_for_file: library_private_types_in_public_api

import "package:cono/global_theme.dart";
import "package:cono/public/login/new/public_login_new_page.dart";
import "package:flutter/material.dart";

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState? of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>();
}

class _MyAppState extends State<MyApp> {
  late ColorScheme _colorScheme;

  @override
  void initState() {
    super.initState();
    _colorScheme = GlobalTheme.getColorSchemeFromString(
      GlobalTheme.checkStoredColorScheme(
        GlobalTheme.instanceFromStorageTheme(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "Cono Demo",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: _colorScheme,
        ),
        home: const PublicLoginNewPage(),
      );

  void changeTheme(ColorScheme colorScheme) {
    setState(() {
      _colorScheme = colorScheme;
    });
  }
}
