import 'dart:ui';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Calling extends StatefulWidget {
  const Calling({Key? key}) : super(key: key);

  @override
  State<Calling> createState() => _CallingState();
}

class _CallingState extends State<Calling> {
  final player = AudioPlayer();

  void playAudio() async{

    player.earpieceOrSpeakersToggle();
    player.setVolume(1.0);
    Random random = new Random();
    int randomNumber = random.nextInt((4));
    print(randomNumber);
    if (randomNumber == 0){
      player.play('https://sndup.net/n5zv/d');
    }
    if (randomNumber == 1){
      player.play('https://sndup.net/t2jz/d');
    }
    if (randomNumber == 2){
      player.play('https://sndup.net/fqkx/d');
    }
    if (randomNumber == 3){
      player.play('https://sndup.net/m229/d');
    }


  }

  @override
  void initState() {
    super.initState();
    print('restarted');
    playAudio();
  }



  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(hexColor('#5c6f84')) ,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            const Center(
              child: Text(
                'Throat Singing Hotline',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),

            SizedBox(height: 10 ),

            const Center(
              child: Text(
                  'Mobile  00',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                ),
              ),
            ),

            const SizedBox(height: 10 ),


            const CircleAvatar(
              backgroundImage: AssetImage('assets/throatsinging.png'),
              radius: 90,
            ),

            const SizedBox(height: 50 ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:  <Widget>[
                Column(
                  children: <Widget> [
                    Icon(
                        Icons.add,
                      size: 55,
                      color: Colors.blueGrey[300],

                    ),
                    Text(
                        '   Add call  ' ,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blueGrey[300],
                      ),
                    ),
                  ],
                ),

                Column(
                  children: <Widget> [
                    Icon(
                      Icons.video_call,
                      size: 55,
                      color: Colors.blueGrey[300],

                    ),
                    Text(
                      'Video Call',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blueGrey[300],
                      ),
                    ),
                  ],
                ),

                Column(
                  children: <Widget> [
                    Icon(
                      Icons.bluetooth,
                      size: 50,
                      color: Colors.blueGrey[300],

                    ),

                    Text(
                      'Bluetooth',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blueGrey[300],
                      ),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:  <Widget>[
                Column(
                  children: <Widget> [
                    Icon(
                      Icons.volume_up,
                      size: 55,
                      color: Colors.blueGrey[300],
                    ),
                    Text(
                      'Speaker ',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blueGrey[300],
                      ),
                    ),
                  ],
                ),

                Column(
                  children: <Widget> [
                    Icon(
                      Icons.mic_off,
                      size: 55,
                      color: Colors.blueGrey[300],

                    ),
                    Text(
                      'Mute',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blueGrey[300],
                      ),
                    ),
                  ],
                ),

                Column(
                  children: <Widget> [
                    Icon(
                      Icons.dialpad,
                      size: 50,
                      color: Colors.blueGrey[300],
                    ),

                    Text(
                      'Keypad',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blueGrey[300],
                      ),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 50),


            RawMaterialButton(
              onPressed: (){
               player.stop();
               Navigator.pop(context);
              },

              fillColor: Colors.white,
              child: const Icon(
                Icons.call_end,
                size: 45.0,
                color: Colors.red,
              ),
              padding: const EdgeInsets.all(15.0),
              shape: const CircleBorder(),
            )




          ],
        ),
      ),
    );
  }

  int hexColor(String c) {
    String sColor = '0xff' + c;
    sColor = sColor.replaceAll('#','');
    int dColor = int.parse(sColor);
    return dColor;
  }
}


