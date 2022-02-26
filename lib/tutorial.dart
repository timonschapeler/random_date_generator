import 'package:flutter/material.dart';

class Tutorial extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
        children: <Widget>[
          Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text('Doomsdays',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                )),
            Table(
                border: TableBorder.all(color: Colors.grey.shade800), // Allows to add a border decoration around your table
                children: const [
                  TableRow(children :[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('1700', style: TextStyle(color: Colors.white),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Sunday', style: TextStyle(color: Colors.white),),
                    ),
                  ]),
                  TableRow(children :[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('1800', style: TextStyle(color: Colors.white),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Friday', style: TextStyle(color: Colors.white),),
                    ),
                  ]),
                  TableRow(children :[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('1900', style: TextStyle(color: Colors.white),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Wednesday', style: TextStyle(color: Colors.white),),
                    ),
                  ]),
                  TableRow(children :[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('2000', style: TextStyle(color: Colors.white),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Tuesday', style: TextStyle(color: Colors.white),),
                    ),
                  ]),
                  TableRow(children :[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('2100', style: TextStyle(color: Colors.white),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Sunday', style: TextStyle(color: Colors.white),),
                    ),
                  ]),
                  TableRow(children :[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('2200', style: TextStyle(color: Colors.white),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('...', style: TextStyle(color: Colors.white),),
                    ),
                  ]),
                ]
            ),
            const Text('Weekday values',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                )),
            Table(
                border: TableBorder.all(color: Colors.grey.shade800), // Allows to add a border decoration around your table
                children: const [
                  TableRow(children :[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Sunday', style: TextStyle(color: Colors.white),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('0', style: TextStyle(color: Colors.white),),
                    ),
                  ]),
                  TableRow(children :[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Monday', style: TextStyle(color: Colors.white),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('1', style: TextStyle(color: Colors.white),),
                    ),
                  ]),
                  TableRow(children :[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Tuesday', style: TextStyle(color: Colors.white),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('2', style: TextStyle(color: Colors.white),),
                    ),
                  ]),
                  TableRow(children :[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Wednesday', style: TextStyle(color: Colors.white),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('3', style: TextStyle(color: Colors.white),),
                    ),
                  ]),
                  TableRow(children :[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Thursday', style: TextStyle(color: Colors.white),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('4', style: TextStyle(color: Colors.white),),
                    ),
                  ]),
                  TableRow(children :[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Friday', style: TextStyle(color: Colors.white),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('5', style: TextStyle(color: Colors.white),),
                    ),
                  ]),
                  TableRow(children :[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Saturday', style: TextStyle(color: Colors.white),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('6', style: TextStyle(color: Colors.white),),
                    ),
                  ]),
                ]
            ),
            const Text('Shortcuts to find doomsday for the year',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                )),
            Table(
                border: TableBorder.all(color: Colors.grey.shade800), // Allows to add a border decoration around your table
                children: const [
                  TableRow(children :[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('0', style: TextStyle(color: Colors.white),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('12', style: TextStyle(color: Colors.white),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('24', style: TextStyle(color: Colors.white),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('36', style: TextStyle(color: Colors.white),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('48', style: TextStyle(color: Colors.white),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('60', style: TextStyle(color: Colors.white),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('72', style: TextStyle(color: Colors.white),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('84', style: TextStyle(color: Colors.white),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('96', style: TextStyle(color: Colors.white),),
                    ),
                  ]),
                  TableRow(children :[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('0', style: TextStyle(color: Colors.white),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('1', style: TextStyle(color: Colors.white),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('2', style: TextStyle(color: Colors.white),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('3', style: TextStyle(color: Colors.white),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('4', style: TextStyle(color: Colors.white),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('5', style: TextStyle(color: Colors.white),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('6', style: TextStyle(color: Colors.white),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('7', style: TextStyle(color: Colors.white),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('8', style: TextStyle(color: Colors.white),),
                    ),
                  ]),
                ]
            ),
            const Text('\"Easy to remember\" doomsday per month',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                )),
            Table(
                border: TableBorder.all(color: Colors.grey.shade800), // Allows to add a border decoration around your table
                children: const [
                  TableRow(children :[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('03.01. (04.01.)', style: TextStyle(color: Colors.white),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('28.02. (29.02.)', style: TextStyle(color: Colors.white),),
                    ),
                  ]),
                  TableRow(children :[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('14.03.', style: TextStyle(color: Colors.white),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('04.04.', style: TextStyle(color: Colors.white),),
                    ),
                  ]),
                  TableRow(children :[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('09.05.', style: TextStyle(color: Colors.white),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('06.06.', style: TextStyle(color: Colors.white),),
                    ),
                  ]),
                  TableRow(children :[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('11.07.', style: TextStyle(color: Colors.white),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('08.08.', style: TextStyle(color: Colors.white),),
                    ),
                  ]),
                  TableRow(children :[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('05.09.', style: TextStyle(color: Colors.white),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('10.10.', style: TextStyle(color: Colors.white),),
                    ),
                  ]),
                  TableRow(children :[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('07.11.', style: TextStyle(color: Colors.white),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('12.12.', style: TextStyle(color: Colors.white),),
                    ),
                  ]),
                ]
            ),

          ],
        ),
      ]
        )
      );
  }
}