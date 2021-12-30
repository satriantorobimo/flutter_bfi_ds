import 'package:example/component_list/list_textfield.dart';
import 'package:flutter/material.dart';
import 'component_list/button_screen.dart';
import 'component_list/color_screen.dart';
import 'component_list/card_screen.dart';
import 'component_list/font_screen.dart';
import 'component_list/text_screen.dart';

const AppBarColor = const Color(0xFF04559f);
const BgColor = const Color(0xFFf7f8fa);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/button': (context) => ButtonScreen(),
        '/color': (context) => ColorScreen(),
        '/card': (context) => CardScreen(),
        '/text': (context) => TextScreen(),
        '/font': (context) => FontScreen(),
        '/listfield': (context) => ListTextField()
      },
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: AppBarColor,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter Direct Demo"),
        ),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              color: BgColor,
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      trailing: Icon(Icons.arrow_forward_ios),
                      title: Text("Font Component"),
                      onTap: () {
                        Navigator.pushNamed(context, '/font');
                      },
                    ),
                    ListTile(
                      trailing: Icon(Icons.arrow_forward_ios),
                      title: Text("Color Component"),
                      onTap: () {
                        Navigator.pushNamed(context, '/color');
                      },
                    ),
                    ListTile(
                      trailing: Icon(Icons.arrow_forward_ios),
                      title: Text("Button Component"),
                      onTap: () {
                        Navigator.pushNamed(context, '/button');
                      },
                    ),
                    ListTile(
                      trailing: Icon(Icons.arrow_forward_ios),
                      title: Text("Card Component"),
                      onTap: () {
                        Navigator.pushNamed(context, '/card');
                      },
                    ),
                    ListTile(
                      trailing: Icon(Icons.arrow_forward_ios),
                      title: Text("List Text Field"),
                      onTap: () {
                        Navigator.pushNamed(context, '/listfield');
                      },
                    )
                  ],
                ),
              ),
            )));
  }
}
