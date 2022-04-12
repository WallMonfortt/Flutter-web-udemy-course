import 'package:bases_web/ui/views/counter_provider_view.dart';
import 'package:bases_web/ui/views/counter_view.dart';
import 'package:bases_web/ui/views/view_404.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

final Handler counterHandler = new Handler(
    handlerFunc: ( context,  params) {
      return Container(
        child: Center(child: Text('CounterApp', style: TextStyle(fontSize: 30),)),
      );
    }
);

final Handler statefulHandler = new Handler(
  handlerFunc: ( context,  params) {
    print(params['base']?[0]); 
    return CounterView(base: params['base'] ?.first ?? '5',);
  }
);

final Handler providerHandler = new Handler(
  handlerFunc: ( context,  params) {
    print(params);
    return CounterProviderView(base: params['q'] ?.first ?? '15');
  }
);

final Handler dashboardUserHandler = new Handler(
  handlerFunc: ( context,  params) {
    print(params);
    return View404();
  }
);

final Handler notFoundHandler = new Handler(
  handlerFunc: ( _,  __) {
    return View404();
  }
);