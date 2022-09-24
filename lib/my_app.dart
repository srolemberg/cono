import "package:cono/color_schemes.g.dart";
import "package:cono/public/login/new/public_login_new_page.dart";
import "package:flutter/material.dart";

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "Cono Demo",
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: lightColorScheme,
        ),
        darkTheme: ThemeData(
          useMaterial3: true,
          colorScheme: darkColorScheme,
        ),
        home: const PublicLoginNewPage(),
      );
}
