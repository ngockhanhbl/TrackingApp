import 'package:flutter/material.dart';
import 'package:my_app/models/font_size.dart';
import 'package:my_app/providers/preference_provider.dart';
import 'package:my_app/screens/settings.dart';
import 'package:my_app/screens/wrapper.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<PreferenceProvider>(create: (context) => PreferenceProvider()),
        // ChangeNotifierProvider<AnotherModel>(create: (context) => AnotherModel()),
      ],
      child:Consumer<PreferenceProvider>(builder: (context, prodiver, child){
        // return StreamBuilder(
        //   stream: prodiver.bloc.brightness,
        //   builder: (context, snapshot){
        //     if (!snapshot.hasData) return Container();
        //     return StreamBuilder<FontSizeModel>(
        //       stream:  prodiver.bloc.fontSize,
        //       builder: (context, snapshotFontSize) {
        //         if (!snapshotFontSize.hasData) return Container();
        //         return MaterialApp(
        //           title: 'Voltrans Tracking App',
        //           initialRoute: '/',
        //           routes: {
        //             '/': (context) => Wrapper(),
        //             'settings': (context) => Settings(),
        //           },
        //           theme: ThemeData(
        //             textTheme: TextTheme(
        //               bodyText2: TextStyle(fontSize: snapshotFontSize.data.size),
        //             ),
        //             primaryColor: Colors.indigo,
        //             brightness: snapshot.data,
        //             visualDensity: VisualDensity.adaptivePlatformDensity,
        //           ),
        //         );
        //       }
        //     );
        //   }
        // );

            return StreamBuilder<FontSizeModel>(
              stream:  prodiver.bloc.fontSize,
              builder: (context, snapshotFontSize) {
                if (!snapshotFontSize.hasData) return Container();
                return MaterialApp(
                  title: 'Voltrans Tracking App',
                  initialRoute: '/',
                  routes: {
                    '/': (context) => Wrapper(),
                    'settings': (context) => Settings(),
                  },
                  theme: ThemeData(
                    textTheme: TextTheme(
                      bodyText2: TextStyle(fontSize: snapshotFontSize.data.size),
                    ),
                    primaryColor: Colors.indigo,
                    visualDensity: VisualDensity.adaptivePlatformDensity,
                  ),
                );
              }
            );


      }) 
    );
  }
}
  // Fields in a Widget subclass are always marked "final".
