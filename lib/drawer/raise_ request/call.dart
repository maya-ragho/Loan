import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';

class CallConnection extends StatelessWidget {
  final String phoneNumber = '9822521916';

  void makePhoneCall(String phoneNumber)async{
    final String url = 'tel:$phoneNumber';

  }
  //const CallConnection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Call Connection'),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          FlutterPhoneDirectCaller.callNumber('7666710289');

          //launch('tel:+9822521916');
        },
            child: Text('Call')),
      ),
    );
  }
}
