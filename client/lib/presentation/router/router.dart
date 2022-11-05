import 'package:auto_route/auto_route.dart';

// it's weird but the app won't compile without these imports lol
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../pages/pages.dart';

part 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute<HomePage>(page: HomePage, initial: true),
  ],
)
class AppRouter extends _$AppRouter {}
