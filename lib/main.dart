
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playstore/Screen/For_you/view/appforyou.dart';
import 'package:playstore/Screen/PlayStore/Provider.dart';
import 'package:playstore/Screen/TopCharts/Provider/Topchartprovider.dart';

import 'package:provider/provider.dart';

import 'Screen/For_you/provider/App_Provider.dart';
import 'Screen/PlayStore/view.dart';


void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => App_provider(),
        ),
        ChangeNotifierProvider(
          create: (context) => Baseprovider(),
        ),
        ChangeNotifierProvider(
          create: (context) => TopchartsProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
         // '/': (context) => Foryouscreen(),
          '/': (context) => Basescreen(),
        },
      ),
    ),
  );
}
