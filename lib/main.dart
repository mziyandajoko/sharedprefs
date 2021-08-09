import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:shared_prefs217006168/widgets/right_image_profile.dart';
import 'package:shared_prefs217006168/widgets/top_image_profile.dart';

import 'modals/state_settings.dart';
import 'widgets/profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: Consumer<ThemeNotifier>(
        builder: (context, value, child) {
          return value.isloading
              ? MaterialApp(
                  debugShowCheckedModeBanner: false,
                  theme: ThemeData(
                    buttonTheme: ButtonThemeData(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    primarySwatch: Colors.blue,
                    visualDensity: VisualDensity.adaptivePlatformDensity,
                  ),
                  // home: changelayout ?? TopImageProfile() ? RightImageProfile() : Profile(),
                  home: Visibility(
                    child: Profile(),
                  ),
                )
              : IsloadingScreen(
                  context: context,
                );
        },
      ),
    );
  }
}

class IsloadingScreen extends StatefulWidget {
  const IsloadingScreen({Key? key, required this.context}) : super(key: key);
  final BuildContext context;

  @override
  _IsloadingScreenState createState() => _IsloadingScreenState();
}

class _IsloadingScreenState extends State<IsloadingScreen> {
  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    await Future.delayed(
      Duration(seconds: 5),
    );
    widget.context.read<ThemeNotifier>().isloading = true;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo.jpeg'),
              SizedBox(
                height: 30,
              ),
              Text("busy Loading")
            ],
          ),
        ),
      ),
    );
  }
}
