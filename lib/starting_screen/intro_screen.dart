import 'dart:async';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:loan/home_page.dart';
import 'package:loan/starting_screen/phone_auth.dart';

class Intro_Screen extends StatefulWidget {
  const Intro_Screen({Key? key}) : super(key: key);

  @override
  State<Intro_Screen> createState() => _Onboarding_screen1State();
}

class _Onboarding_screen1State extends State<Intro_Screen> with TickerProviderStateMixin {
  List<Duration> durations = [Duration(seconds: 2), Duration(seconds: 2), Duration(seconds: 2)];
  int index = 0;
  final _introKey = GlobalKey<IntroductionScreenState>();
  String _status = 'Waiting...';

  @override
  void initState(){
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      if(index < durations.length){
        if (durations[index].inSeconds == 0) {
          _introKey.currentState?.next();
          index++;
        } else {
          durations[index] = durations[index] - Duration(seconds: 1);
        }
      } else {
        timer.cancel();
      }
    });
  }

  Widget build(BuildContext context) {
    return IntroductionScreen(
      // 2. Pass that key to the IntroductionScreen key param
      key: _introKey,
      pages: [
        PageViewModel(
          title: "",
          bodyWidget: Column(
            children:[
              Image.asset("assets/images/bag.png",fit: BoxFit.fitWidth,),
              Container(
                padding: EdgeInsets.all(25),
                child:Text('MEET YOUR COACH, \nSTART YOUR JOURNEY',style: TextStyle(
                    fontSize: 20,fontWeight: FontWeight.bold,color:Colors.white ),
                  textAlign: TextAlign.center,
                ),
              ),
              Text(_status),
            ],
          ),
        ),
        PageViewModel(
          title: "",
          bodyWidget: Column(
            children: [
              Image.asset('assets/images/img_8.png',fit: BoxFit.fitWidth,),
              Container(
                padding: EdgeInsets.all(25),
                child:Text('CREATE A WORKOUT PLAN \n TO STAY FIT',style: TextStyle(
                    fontSize: 20,fontWeight: FontWeight.bold,color:Colors.white ),
                  textAlign: TextAlign.center,
                ),
              ),
              Text(_status),
            ],
          ),
        ),
        PageViewModel(
          title: "",
          bodyWidget: Column(
            children: [
              Image.asset('assets/images/img_6.png',fit: BoxFit.fitWidth,),
              Container(
                padding: EdgeInsets.all(25),
                child:Text(' ACTION IS THE \nKEY TO ALL SUCCESS ',style: TextStyle(
                    fontSize: 20,fontWeight: FontWeight.bold,color:Colors.white ),
                  textAlign: TextAlign.center,
                ),
              ),
              Text(_status),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Color(0xff0e548b))
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PhoneAuth(),));
                  },
                  child: const Text('Start New',style: TextStyle(color: Colors.white),))
            ],
          ),
        ),
      ],
      showNextButton: false,
      showDoneButton: false,
    );
  }
}