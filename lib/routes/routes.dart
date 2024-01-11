

import 'package:componentes/pages/alert_page.dart';
import 'package:componentes/pages/animated_container.dart';
import 'package:componentes/pages/avatar_page.dart';
import 'package:componentes/pages/card_page.dart';
import 'package:componentes/pages/home_page.dart';
import 'package:componentes/pages/inputs.dart';
import 'package:componentes/pages/listview_page.dart';
import 'package:componentes/pages/slider_page.dart';
import 'package:flutter/material.dart';

Map<String,WidgetBuilder> getApplicationRoutes(){
  return <String, WidgetBuilder>{
     '/': (BuildContext context)  => const HomePage(),
     'alert': (BuildContext context)  => const AlertPage(),
     'avatar': (BuildContext context)  => const AvatarPage(),
     'card': (BuildContext context)  => const CardPage(),
     'animatedConainer': (BuildContext context)  => const AnimatedContainerPage(),
     'input': (BuildContext context)  => const InputsPage(),
     'list': (BuildContext context)  => const ListviewPage(),
     'slider': (BuildContext context)  => const SliderPage(),
  };
}