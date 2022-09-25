// ignore_for_file: library_private_types_in_public_api

import "package:cono/global_theme.dart";
import "package:cono/public/login/login_route_structure.dart";
import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState? of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>();
}

class _MyAppState extends State<MyApp> {
  late ColorScheme _colorScheme;
  late GoRouter _router;

  @override
  void initState() {
    super.initState();
    _colorScheme = GlobalTheme.getColorSchemeFromString(
      GlobalTheme.checkStoredColorScheme(
        GlobalTheme.instanceFromStorageTheme(),
      ),
    );

    _router = GoRouter(
      routes: <GoRoute>[
        LoginRouteStructure.object,
      ],
    );
  }

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        routeInformationProvider: _router.routeInformationProvider,
        routeInformationParser: _router.routeInformationParser,
        routerDelegate: _router.routerDelegate,
        title: "Cono Demo",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: _colorScheme,
        ),
      );

  void changeTheme(ColorScheme colorScheme) {
    setState(() {
      _colorScheme = colorScheme;
    });
  }
}
