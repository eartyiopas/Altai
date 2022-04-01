import 'package:flutter/material.dart';
import 'dial/dialpad.dart';




class Homescreen extends StatefulWidget {

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Throat Singing Hotline'),
        centerTitle: true,
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
          child:
          DialPad(
              enableDtmf: true,
              //outputMask: "(000) 000-0000",
              backspaceButtonIconColor: Colors.red,
              buttonTextColor: Colors.white,
              dialOutputTextColor: Colors.white,
              keyPressed: (value){
                print('$value was pressed');
              },
              makeCall: (number) async {
                print(number);

                  if(number=='00'){
                    Navigator.pushNamed(context, '/Calling');
                  }
                  else{
                    print('youre fucked');
                  }

              }


          )
      ),
    );
  }
}

