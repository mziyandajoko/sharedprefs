import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_prefs217006168/modals/state_settings.dart';
import 'package:shared_prefs217006168/widgets/profile.dart';

class Settings extends StatelessWidget {
  final Function(String) onLayoutSelected;
  const Settings({Key? key, required this.onLayoutSelected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Container(
        child: ListView(
          children: [
            Card(
              color: Colors.grey[800],
              margin: EdgeInsets.fromLTRB(5, 20, 5, 20),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'App Buttons rounded',
                      style: TextStyle(
                          height: 5,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Consumer<ThemeNotifier>(
                      builder: (context, value, child) {
                        return Switch(
                            value: value.darkTheme,
                            onChanged: (val) {
                              value.toggleTheme();
                            });
                      },
                    ),
                  ],
                ),
              ),
            ),
            // BUTTONS
            Column(
              children: [
                Card(
                  color: Colors.grey[800],
                  margin: EdgeInsets.fromLTRB(5, 20, 5, 20),
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          'Choose layout',
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              children: [
                                Visibility(
                                  child: RaisedButton(
                                    padding: const EdgeInsets.all(20),
                                    child: Text('Pic on left'),
                                    onPressed: () =>
                                        onLayoutSelected("picOnLeft"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Consumer<ThemeNotifier>(
                            builder: (context, value, child) {
                              return Padding(
                                padding: const EdgeInsets.all(20),
                                child: Row(
                                  children: [
                                    Visibility(
                                      child: RaisedButton(
                                        padding: const EdgeInsets.all(20),
                                        child: Text('Pic on right'),
                                        onPressed: () =>
                                            onLayoutSelected("picOnRight"),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              children: [
                                Visibility(
                                  child: RaisedButton(
                                    padding: const EdgeInsets.all(20),
                                    child: Text('Pic on top'),
                                    onPressed: () =>
                                        onLayoutSelected("picOnTop"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // TextButton(
                          //   style: ButtonStyle(
                          //     backgroundColor:
                          //         MaterialStateProperty.all<Color>(Colors.blue),
                          //   ),
                          //   onPressed: () {
                          //     Navigator.push(
                          //         context,
                          //         MaterialPageRoute(
                          //             builder: (context) => Profile()));
                          //   },
                          //   child: Text(
                          //     'pic on right',
                          //     style: TextStyle(color: Colors.white),
                          //   ),
                          // ),
                          // TextButton(
                          //   style: ButtonStyle(
                          //     backgroundColor:
                          //         MaterialStateProperty.all<Color>(Colors.blue),
                          //   ),
                          //   onPressed: () {
                          //     Navigator.push(
                          //         context,
                          //         MaterialPageRoute(
                          //             builder: (context) => Profile()));
                          //   },
                          //   child: Text(
                          //     'pic on top',
                          //     style: TextStyle(color: Colors.white),
                          //   ),
                          // ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
