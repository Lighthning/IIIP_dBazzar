// import 'package:flutter/material.dart';
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Admin Interface',
//       theme: ThemeData(
//         primaryColor: Color(0xff480048),
//         accentColor: Color(0xffFE9E9E),
//       ),
//       home: AdminPage(),
//     );
//   }
// }
//
// class AdminPage extends StatefulWidget {
//   @override
//   _AdminPageState createState() => _AdminPageState();
// }
//
// class _AdminPageState extends State<AdminPage> {
//   // Variables to store analytical key metrics
//   int totalPlays = 0;
//   int totalWins = 0;
//   int totalLosses = 0;
//
//   // Variables to store game conditions
//   int frequency = 0;
//   bool isFree = true;
//   int cost = 0;
//   int prize = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Admin Page"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: [
//             // Display analytical key metrics and graphs
//             Expanded(
//               child: Container(
//                 child: Column(
//                   children: [
//                     Text("Total Plays: $totalPlays"),
//                     Text("Total Wins: $totalWins"),
//                     Text("Total Losses: $totalLosses"),
//                     // Graph visualization of the metrics
//                     Container(
//                       height: 200,
//                       child: Placeholder(),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             // Edit and set the variable conditions for the games
//             Container(
//               child: Column(
//                 children: [
//                   TextField(
//                     decoration: InputDecoration(
//                       labelText: "Frequency",
//                       hintText: "Enter the frequency they are able to play",
//                     ),
//                     onChanged: (value) {
//                       setState(() {
//                         frequency = int.parse(value);
//                       });
//                     },
//                   ),
//                   CheckboxListTile(
//                     title: Text("Is Free"),
//                     value: isFree,
//                     onChanged: (value) {
//                       setState(() {
//                         isFree = value!;
//                       });
//                     },
//                   ),
//                   Visibility(
//                     visible: !isFree,
//                     child: TextField(
//                       decoration: InputDecoration(
//                         labelText: "Cost",
//                         hintText: "Enter the cost for each play",
//                       ),
//                       onChanged: (value) {
//                         setState(() {
//                           cost = int.parse(value);
//                         });
//                       },
//                     ),
//                   ),
//                   TextField(
//                     decoration: InputDecoration(
//                       labelText: "Prize",
//                       hintText: "Enter the prize for winning",
//                     ),
//                     onChanged: (value) {
//                       setState(() {
//                         prize = int.parse(value);
//                       });
//                     },
//                   ),
//                   MaterialButton(
//                     child: Text("Save"),
//                     onPressed: () {
//                       // Save the updated conditions to the database
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Admin Interface',
      theme: ThemeData(
        primaryColor: Color(0xff480048),
        accentColor: Color(0xffFE9E9E),
      ),
      home: AdminPage(),
    );
  }
}

class AdminPage extends StatefulWidget {
  @override
  _AdminPageState createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  // Variables to store analytical key metrics
  int totalPlays = 0;
  int totalWins = 0;
  // int totalLosses = 0;

  // Variables to store game conditions
  int frequency = 0;
  int isFreeVal = 0;
  bool isFree = true;
  int cost = 0;
  int prize = 0;
  int gameChoice = 0;
  List<DropdownMenuItem<int>> prizeitems = [DropdownMenuItem(child: Text("10 Gold", style: TextStyle(color: Colors.white)),value: 1,),DropdownMenuItem(child: Text("20 Gold", style: TextStyle(color: Colors.white)), value: 2, ),DropdownMenuItem(child: Text("30 Gold", style: TextStyle(color: Colors.white)), value: 3, ),];

  void addCustomItem() {
    prizeitems.add(DropdownMenuItem(
      child: Text("Custom Prize", style: TextStyle(color: Colors.white)),
      value: -1,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Admin Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.red,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0, 2),
                    blurRadius: 6.0,
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: DropdownButton(
                  items: [
                    DropdownMenuItem(
                      child: Text("Game 1", style: TextStyle(color: Colors.white)),
                      value: 1,
                    ),
                    DropdownMenuItem(
                      child: Text("Game 2", style: TextStyle(color: Colors.white)),
                      value: 2,
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      gameChoice = value!;
                    });
                  },
                  value: gameChoice == 0 ? null : gameChoice,
                  hint: Text("Select the Game", style: TextStyle(color: Colors.white)),
                  icon: Icon(Icons.arrow_drop_down, color: Colors.white),
                  style: TextStyle(color: Colors.white),
                  isExpanded: true,
                  underline: Container(),
                  elevation: 8,
                  iconSize: 36,
                  focusColor: Colors.red,
                  dropdownColor: Colors.red,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            Container(
              child: Container(
                margin: EdgeInsets.only(left:5, top: 16, right: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, 2),
                      blurRadius: 6.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.red)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Text("Total Plays: $totalPlays", style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ),
                    Container(
                      // decoration: BoxDecoration(
                      //   border: Border(bottom: BorderSide(color: Colors.red)),
                      // ),
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Text("Total Wins: $totalWins", style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ),
                    // Padding(
                    //   padding: EdgeInsets.only(top: 16),
                    //   child: Text("Total Losses: $totalLosses", style: TextStyle(fontWeight: FontWeight.bold)),
                    // ),
                    Container(
                      margin: EdgeInsets.only(top: 16),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 16),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 2),
                          blurRadius: 6.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: DropdownButton(
                        items: [
                          DropdownMenuItem(
                            child: Text("Hourly", style: TextStyle(color: Colors.white)),
                            value: 1,
                          ),
                          DropdownMenuItem(
                            child: Text("Daily", style: TextStyle(color: Colors.white)),
                            value: 2,
                          ),
                          DropdownMenuItem(
                            child: Text("Weekly", style: TextStyle(color: Colors.white)),
                            value: 3,
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            frequency = value!;
                          });
                        },
                        hint: Text("Select the Frequency", style: TextStyle(color: Colors.white)),
                        value: frequency == 0 ? null : frequency,
                        icon: Icon(Icons.arrow_drop_down, color: Colors.white),
                        style: TextStyle(color: Colors.white),
                        isExpanded: true,
                        underline: Container(),
                        elevation: 8,
                        iconSize: 36,
                        focusColor: Colors.red,
                        dropdownColor: Colors.red,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 16),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 2),
                          blurRadius: 6.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: DropdownButton(
                        items: [
                          DropdownMenuItem(
                            child: Text("Free to Play Hourly", style: TextStyle(color: Colors.white)),
                            value: 1,
                          ),
                          DropdownMenuItem(
                            child: Text("Free to Play Daily", style: TextStyle(color: Colors.white)),
                            value: 2,
                          ),
                          DropdownMenuItem(
                            child: Text("Free to Play Weekly", style: TextStyle(color: Colors.white)),
                            value: 3,
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            isFree = false;
                            isFreeVal = value!;
                          });
                        },
                        hint: Text("Cost of Playing", style: TextStyle(color: Colors.white)),
                        value: isFreeVal == 0 ? null : isFreeVal,
                        icon: Icon(Icons.arrow_drop_down, color: Colors.white),
                        style: TextStyle(color: Colors.white),
                        isExpanded: true,
                        underline: Container(),
                        elevation: 8,
                        iconSize: 36,
                        focusColor: Colors.red,
                        dropdownColor: Colors.red,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),

                  Visibility(
                    visible: !isFree,
                    child: Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(top: 16),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0, 2),
                              blurRadius: 6.0,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                          child: DropdownButton(
                            items: [
                              DropdownMenuItem(
                                child: Text("10 Gold", style: TextStyle(color: Colors.white)),
                                value: 1,
                              ),
                              DropdownMenuItem(
                                child: Text("20 Gold", style: TextStyle(color: Colors.white)),
                                value: 2,
                              ),
                              DropdownMenuItem(
                                child: Text("30 Gold", style: TextStyle(color: Colors.white)),
                                value: 3,
                              ),
                            ],
                            onChanged: (value) {
                              setState(() {
                                cost = value!;
                              });
                            },
                            hint: Text("Cost of Playing subsequent games", style: TextStyle(color: Colors.white)),
                            value: cost == 0 ? null : cost,
                            icon: Icon(Icons.arrow_drop_down, color: Colors.white),
                            style: TextStyle(color: Colors.white),
                            isExpanded: true,
                            underline: Container(),
                            elevation: 8,
                            iconSize: 36,
                            focusColor: Colors.red,
                            dropdownColor: Colors.red,
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
    ),

                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 16, bottom: 24),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 2),
                          blurRadius: 6.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: Column(
                        children: [
                          DropdownButton(
                            items: [
                              for (int i = 10; i <= 30; i += 10)
                                DropdownMenuItem(
                                  child: Text("$i Gold", style: TextStyle(color: Colors.white)),
                                  value: i,
                                ),
                              DropdownMenuItem(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: TextField(
                                        style: TextStyle(color: Colors.white),
                                        decoration: InputDecoration(
                                          hintText: "Custom prize",
                                          hintStyle: TextStyle(color: Colors.white),
                                        ),
                                        onChanged: (value) {
                                          setState(() {
                                            prize = int.tryParse(value) ?? 0;
                                          });
                                        },
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    MaterialButton(
                                      onPressed: () {
                                        setState(() {
                                          // Add the custom prize to the dropdown menu items
                                          prizeitems.add(DropdownMenuItem(
                                            child: Text("$prize Gold", style: TextStyle(color: Colors.white)),
                                            value: prize,
                                          ));
                                        });
                                      },
                                      child: Text("Add", style: TextStyle(color: Colors.white)),
                                    ),
                                  ],
                                ),
                                value: -1,
                              ),
                            ],
                            onChanged: (value) {
                              setState(() {
                                prize = value!;
                              });
                            },
                            hint: Text("Customize the prize", style: TextStyle(color: Colors.white)),
                            value: prize == 0 ? null : prize,
                            icon: Icon(Icons.arrow_drop_down, color: Colors.white),
                            style: TextStyle(color: Colors.white),
                            isExpanded: true,
                            underline: Container(),
                            elevation: 8,
                            iconSize: 36,
                            focusColor: Colors.red,
                            dropdownColor: Colors.red,
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ],
                      ),
                    ),
                  ),

                  MaterialButton(
                    child: Text("Save Changes",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    onPressed: () {},
                    color: Colors.red,
                    minWidth: double.infinity,
                    height: 50,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),


                ],
    ),
    ),
              ],
          ),
        ),
    );
  }
}

