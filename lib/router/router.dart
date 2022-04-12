//This file replaces the file router_generator

import 'package:bases_web/router/rote_handlers.dart';
import 'package:fluro/fluro.dart';

class Flurorouter{
  static final FluroRouter router = new FluroRouter();

  static void configureRoutes(){
    router.define(
      '/',
      handler: counterHandler,
      transitionType: TransitionType.none,
    );
    router.define(
      '/stateful',
      handler: statefulHandler,
      transitionType: TransitionType.none,
    );
    router.define(
      '/stateful/:base',
      handler: statefulHandler,
      transitionType: TransitionType.none,
    );
    router.define(
      '/provider',
      handler: providerHandler,
      transitionType: TransitionType.none,
    );
    router.define(
      '/dashboard/users/:userId/:roleId',
      handler: dashboardUserHandler,
      transitionType: TransitionType.none,
    );
    router.notFoundHandler = notFoundHandler;
  }
}