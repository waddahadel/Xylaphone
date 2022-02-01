import 'package:audioplayers/audioplayers.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const xylaphone());
}

class xylaphone extends StatelessWidget {
  const xylaphone({Key? key}) : super(key: key);

  void playsound(int soundnumber){
    final player = AudioCache();
    player.play('assets_note$soundnumber.wav');
  }


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,

        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: FloatingActionButton(
                  onPressed: (){
                    playsound(1);
                  },

                  ),
                ),
                Expanded(child:FloatingActionButton(
                  backgroundColor: Colors.pink,
                  onPressed: (){
                    playsound(2);
                  },

                ), )

              ],
            ),
          ),
        ),
      ),
    );
  }
}

