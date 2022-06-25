import 'dart:io';
import 'package:flutter/material.dart';
import 'package:tic_tac_toe_real/credits.dart';

import 'package:tic_tac_toe_real/vs_player.dart';

import 'difficulty_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
             const SizedBox(
              height:20.0,

            ),
             Align(alignment: Alignment(0.8,0) ,
               child: Text('TIC TAC TOE ', style: TextStyle(
                fontFamily: 'PressStart2P',
                fontSize: 30.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,

            ),),
             ),
            const SizedBox(
              height: 30.0,

            ),
            Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(19.0)),
                  color: Colors.white,
                ),
                width: 250,
                child: const Image(
                  image: AssetImage('images/avatar.png'),
                )),
            const SizedBox(
              height: 20.0,

            ),
            const Text(
              'play mode',
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'PressStart2P',
              ),
            ),
            const SizedBox(
              height: 30.0,

            ),
             Center(
              child: RaisedButton(
                  padding: EdgeInsets.fromLTRB(42, 10, 42, 10),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0)),
                  child: const Text('1 player', style: TextStyle(
                      fontFamily: 'PressStart2P',
                      color: Colors.black,
                      fontSize: 23,
                      fontWeight: FontWeight.w600),),
                  onPressed:() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => difficulty_screen()));
                  }),),

            const SizedBox(
              height: 20.0,

            ),
        Center(
          child: RaisedButton(
              padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0)),
              child: const Text('2 players', style: TextStyle(
                  fontFamily: 'PressStart2P',
                  color: Colors.black,
                  fontSize: 23,
                  fontWeight: FontWeight.w600),),
              onPressed:() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => vs_player()));
              }),
        ),
            const SizedBox(
              height: 20.0,
            ),
            FlatButton(
                child:Text('EXIT',style: TextStyle(
                    fontFamily: 'PressStart2P',
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.w600),) ,
                onPressed:() {
                  exit(0);}),
            const SizedBox(
              height: 20.0,
            ),
            FlatButton(
       child:Text('CREDITS',style: TextStyle(
        fontFamily: 'PressStart2P',
        color: Colors.white,
        fontSize: 23,
        fontWeight: FontWeight.w600),) ,
    onPressed:() {
    Navigator.push(context,
    MaterialPageRoute(builder: (context) => credits()));}),

          ],
        ),
      ),
    );
  }
}
