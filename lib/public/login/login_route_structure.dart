import "package:cono/public/login/new/public_login_new_page.dart";
import "package:cono/public/login/public_login_page.dart";
import "package:flutter/widgets.dart";
import "package:go_router/go_router.dart";

class LoginRouteStructure {
  LoginRouteStructure._();

  static GoRoute get object => home;

  static GoRoute get home => GoRoute(
        path: "/",
        builder: (BuildContext context, GoRouterState state) =>
            const PublicLoginPage(),
        routes: <GoRoute>[
          homeNew,
        ],
      );

  static GoRoute get homeNew => GoRoute(
        path: "new",
        builder: (BuildContext context, GoRouterState state) =>
            const PublicLoginNewPage(),
      );
}
