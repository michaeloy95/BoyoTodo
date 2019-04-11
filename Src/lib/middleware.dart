import 'package:boyo_todo/globals.dart';
import 'package:boyo_todo/state.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';

import 'package:boyo_todo/features/login/middleware.dart' as login;
import 'package:boyo_todo/features/notebook/middleware.dart' as notebook;

List<Middleware<AppState>> getMiddleware(
  Apis apis,
  GlobalKey<NavigatorState> navigatorKey,
) => [
    login.getMiddleware(apis.loginApi, navigatorKey),
    notebook.getMiddleware(apis.notebookApi)
  ].expand((x) => x).toList();