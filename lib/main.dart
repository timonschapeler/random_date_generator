import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
  var currentDate = RandomDate.withRange(1700, 2400).random(); //initial date, when app is opened
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
  final verifyDate_day = TextEditingController();//..text = '12';
  final verifyDate_month = TextEditingController();
  final verifyDate_year = TextEditingController();
  bool _validate_day = false;
  bool _validate_month = false;
  bool _validate_year = false;

  final _startYear = TextEditingController(); //controls the startYear in the settings menu
  final _endYear = TextEditingController(); //controls the endYear in the settings menu
  var startYear = 1700; //default
  var endYear = 2400; //default

  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 3,
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
            Tab(icon: Icon(Icons.calendar_today)),//text: 'Generate',
            Tab(icon: Icon(Icons.check_rounded)),//text: 'Verify',
            Tab(icon: Icon(Icons.settings)),//text: 'Settings',
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
                        currentDate = RandomDate.withRange(startYear, endYear).random();
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
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Flexible(
                        child: TextField(
                          controller: verifyDate_day,
                          style: const TextStyle(color: Colors.white),
                          keyboardType: TextInputType.number,
                          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            //alignLabelWithHint: true,
                            labelText: 'Day',
                            labelStyle: TextStyle(color: Colors.white),
                            hintText: 'dd',
                            hintStyle: TextStyle(color: Colors.grey),
                            counterText: "",
                            errorText: _validate_day ? 'Specify day' : null,
                          ),
                          maxLength: 2,
                        ),
                      ),
                      Flexible(
                        child: TextField(
                          controller: verifyDate_month,
                          style: const TextStyle(color: Colors.white),
                          keyboardType: TextInputType.number,
                          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            //alignLabelWithHint: true,
                            labelText: 'Month',
                            labelStyle: TextStyle(color: Colors.white),
                            hintText: 'mm',
                            hintStyle: TextStyle(color: Colors.grey),
                            counterText: "",
                            errorText: _validate_month ? 'Specify month' : null,
                          ),
                          maxLength: 2,
                        ),
                      ),
                      Flexible(
                        child: TextField(
                          controller: verifyDate_year,
                          style: const TextStyle(color: Colors.white),
                          keyboardType: TextInputType.number,
                          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            //alignLabelWithHint: true,
                            labelText: 'Year',
                            labelStyle: TextStyle(color: Colors.white),
                            hintText: 'yyyy',
                            hintStyle: TextStyle(color: Colors.grey),
                            counterText: "",
                            errorText: _validate_year ? 'Specify year' : null,
                          ),
                          maxLength: 4,
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  child: const Text('Check Weekday',
                      style: TextStyle(
                          fontSize: 20.0
                      )
                  ),
                  onPressed: () {
                    setState(() {
                      verifyDate_day.text.isEmpty ? _validate_day = true : _validate_day = false;
                      verifyDate_month.text.isEmpty ? _validate_month = true : _validate_month = false;
                      verifyDate_year.text.isEmpty ? _validate_year = true : _validate_year = false;
                    });
                    showDialog(
                      context: context,
                      builder: (context) {
                          return AlertDialog(
                            content: Text(
                                (verifyDate_day.text.isEmpty || verifyDate_month.text.isEmpty || verifyDate_year.text.isEmpty) ? 'Input can\'t be empty.' : DateFormat('EEEE').format(DateFormat('dd.MM.yyyy').parse(verifyDate_day.text + '.' + verifyDate_month.text + '.' + verifyDate_year.text)) // || is or, and this line implements an if/else condition
                            ),
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
          // #######################################
          // ### The following part is the Tab 3 ###
          // #######################################
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Flexible(
                      child: TextField(
                        controller: _startYear,
                        style: const TextStyle(color: Colors.white),
                        keyboardType: TextInputType.number,
                        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          //alignLabelWithHint: true,
                          labelText: 'Start year',
                          labelStyle: TextStyle(color: Colors.white),
                          hintText: 'yyyy, default 1700',
                          hintStyle: TextStyle(color: Colors.grey),
                          counterText: "",
                          errorText: _validate_month ? 'Specify month' : null,
                        ),
                        maxLength: 4,
                      ),
                    ),
                    Flexible(
                      child: TextField(
                        controller: _endYear,
                        style: const TextStyle(color: Colors.white),
                        keyboardType: TextInputType.number,
                        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                        textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                          //alignLabelWithHint: true,
                          labelText: 'End year',
                          labelStyle: TextStyle(color: Colors.white),
                          hintText: 'yyyy, default 2400',
                          hintStyle: TextStyle(color: Colors.grey),
                          counterText: "",
                        ),
                        maxLength: 4,
                      ),
                    ),
                  ],
                ),
              ),
                ElevatedButton(
                        child: const Text('Update',
                            style: TextStyle(
                                fontSize: 20.0
                            )
                        ),
                        onPressed: () {
                          setState(() {
                            startYear = int.parse(_startYear.text);
                            endYear = int.parse(_endYear.text);
                          });
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: Text(
                                    (startYear <= endYear) ? 'Updated successfully' : 'Start year <= End year'
                                ),
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


