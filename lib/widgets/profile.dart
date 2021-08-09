import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'settings.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String? _selectedLayout;
  @override
  void initState() {
    _selectedLayout = "picOnLeft";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: ListView(
          children: [
            Card(
              margin: EdgeInsets.fromLTRB(5, 25, 5, 30),
              color: Colors.blue.shade900,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Profile',
                    style: TextStyle(fontSize: 80, color: Colors.white),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Settings(
                              onLayoutSelected: (layout) => setState(() {
                                    _selectedLayout = layout;
                                  })),
                        ),
                      );
                    },
                    icon: Icon(Icons.settings),
                    color: Colors.white,
                    iconSize: 24,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            if (_selectedLayout == "picOnLeft")
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    radius: 120,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage(
                        'assets/images/black-woman-fashion-photo.jpeg'),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Text(
                        'Joyce',
                        style: TextStyle(fontSize: 50, color: Colors.white),
                      ),
                      Text(
                        'Makhaba',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  )
                ],
              )
            else if (_selectedLayout == "picOnRight")
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        'Joyce',
                        style: TextStyle(fontSize: 50, color: Colors.white),
                      ),
                      Text(
                        'Makhaba',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  CircleAvatar(
                    radius: 120,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage(
                        'assets/images/black-woman-fashion-photo.jpeg'),
                  ),
                ],
              )
            else if (_selectedLayout == "picOnTop")
              Column(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    radius: 120,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage(
                        'assets/images/black-woman-fashion-photo.jpeg'),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Text(
                        'Joyce',
                        style: TextStyle(fontSize: 50, color: Colors.white),
                      ),
                      Text(
                        'Makhaba',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  )
                ],
              ),
            const SizedBox(
              height: 50,
            ),
            //BUTTONS
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Visibility(
                        child: RaisedButton(
                          padding: const EdgeInsets.all(20),
                          color: Colors.purple.shade900,
                          child: Row(
                            children: [
                              Icon(
                                Icons.phone,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                'Phone',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Visibility(
                        child: RaisedButton(
                          padding: const EdgeInsets.all(20),
                          color: Colors.purple.shade900,
                          child: Row(
                            children: [
                              Icon(
                                Icons.mail,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                'Mail',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),

                // Padding(
                //   padding: const EdgeInsets.all(40),
                //   child: Row(
                //     children: [
                //       // An enabled button
                //       ElevatedButton(
                //         style: ButtonStyle(
                //           backgroundColor:
                //               MaterialStateProperty.all<Color>(Colors.purple),
                //         ),
                //         child: Row(
                //           children: [
                //             Icon(Icons.mail),
                //             SizedBox(
                //               width: 15,
                //             ),
                //             Text(
                //               'Mail',
                //               style:
                //                   TextStyle(fontSize: 30, color: Colors.white),
                //             ),
                //           ],
                //         ),
                //         onPressed: () {},
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          ],
        ));
  }
}