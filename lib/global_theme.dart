import "package:cono/color_schemes.g.dart";
import "package:cono/my_app.dart";
import "package:flutter/material.dart";
import "package:localstorage/localstorage.dart";

class GlobalTheme {
  static const String themeFile = "theme_file.json";
  static const String themeKey = "themeKey";
  static const String themeValueLight = "light";
  static const String themeValueDark = "dark";

  static LocalStorage? _storage;

  GlobalTheme._();

  static LocalStorage instanceFromStorageTheme() {
    if (_storage == null) {
      return LocalStorage(themeFile);
    } else {
      return _storage!;
    }
  }

  static void requestThemeChange(BuildContext context) {
    setColorScheme(
      instanceFromStorageTheme(),
      checkStoredColorScheme(instanceFromStorageTheme()),
    );

    MyApp.of(context)?.changeTheme(
      getColorSchemeFromString(
        checkStoredColorScheme(instanceFromStorageTheme()),
      ),
    );
  }

  static void setColorScheme(LocalStorage prefs, String actual) {
    if (prefs.getItem(themeKey) == themeValueLight) {
      prefs.setItem(themeKey, themeValueDark);
    } else {
      prefs.setItem(themeKey, themeValueLight);
    }
  }

  static String checkStoredColorScheme(LocalStorage prefs) {
    if (prefs.getItem(themeKey) == null) {
      prefs.setItem(themeKey, themeValueLight);
    }

    return prefs.getItem(themeKey) as String;
  }

  static ColorScheme getColorSchemeFromString(String value) {
    if (value == themeValueDark) {
      return darkColorScheme;
    } else {
      return lightColorScheme;
    }
  }
}
