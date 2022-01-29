import 'package:flutter/material.dart';
import 'package:random_date/random_date.dart';
import 'package:intl/intl.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var currentDate = RandomDate.withRange(1700, 2400).random();
  bool _isVisible = false;

  void showText() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }
  void doNotShowText() {
    setState(() {
      _isVisible = false;
    });
  }
  final verifyDate = TextEditingController();

  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 2,
      child: Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
          title: const Text('Random Date Generator'),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
          actions: [
            PopupMenuButton(itemBuilder: (context)=>[
              const PopupMenuItem(
                child: Text("created by Timon Schapeler"),
              ),
            ],
            ),
          ],
        bottom: const TabBar(
          tabs: [
            Tab(text: 'Generate', icon: Icon(Icons.calendar_today)),
            Tab(text: 'Verify', icon: Icon(Icons.check_rounded)),
          ],
        ),
      ),
      body:
      TabBarView(
        children: [
          // #######################################
          // ### The following part is the Tab 1 ###
          // #######################################
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                //'$currentDate'.substring(0,10) //display as yyyy-mm-dd
                '$currentDate'.substring(8,10)+'.'+'$currentDate'.substring(5,7)+'.'+'$currentDate'.substring(0,4), //display as dd.mm.yyyy
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 35.0,
                ),
              ),
              Visibility(
                visible: _isVisible,
                maintainSize: true,
                maintainAnimation: true,
                maintainState: true,
                child: Text(
                  //'${currentDate.weekday}',
                    DateFormat('EEEE').format(currentDate),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 35.0,
                    )
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    child: const Text('Generate Date',
                        style: TextStyle(
                            fontSize: 20.0
                        )
                    ),
                    onPressed: () {
                      doNotShowText();
                      setState(() {
                        currentDate = RandomDate.withRange(1700, 2400).random();
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.grey[850],
                        minimumSize: const Size(180.0,50.0)),
                  ),
                  ElevatedButton(
                      child: const Text('Check Weekday',
                          style: TextStyle(
                              fontSize: 20.0
                          )
                      ),
                      onPressed: () {showText();},
                      style: ElevatedButton.styleFrom(
                          primary: Colors.grey[850],
                          minimumSize: const Size(180.0,50.0))
                  ),
                ],
              ),
            ],
          ),
          // #######################################
          // ### The following part is the Tab 2 ###
          // #######################################
          Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextField(
                  controller: verifyDate,
                  style: const TextStyle(color: Colors.white),
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(5.0),
                    hintText: 'Enter date as yyyy-mm-dd',
                    hintStyle: TextStyle(
                    color: Colors.grey),
                  ),
                  maxLength: 10,
                  ),
                ),
                ElevatedButton(
                  child: const Text('Check Weekday',
                      style: TextStyle(
                          fontSize: 20.0
                      )
                  ),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            //content: Text(verifyDate.text),
                            //content: Text(DateFormat('EEEE').format(DateTime.parse('$verifyDate'.substring(6,10)+'-'+'$verifyDate'.substring(3,5)+'-'+'$verifyDate'.substring(0,2)))),
                            //content: Text('$verifyDate'.substring(6,10)+'-'+'$verifyDate'.substring(3,5)+'-'+'$verifyDate'.substring(0,2)),
                            content: Text(DateFormat('EEEE').format(DateTime.parse(verifyDate.text))), //TODO: fix crashes for incorrect input format
                          );
                        },
                    );
                    },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.grey[850],
                      minimumSize: const Size(180.0,50.0))
              ),
              ],
          ),
        ],
      ),
    ),
  );
  }


