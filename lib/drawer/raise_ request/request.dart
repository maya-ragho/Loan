import 'package:flutter/material.dart';
import 'package:loan/drawer/raise_%20request/request_registration.dart';

import '../../home_page.dart';

class Request extends StatefulWidget {
  const Request({super.key});

  @override
  State<Request> createState() => _RequestState();
}

class _RequestState extends State<Request> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Raise Service Request',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
            icon: Icon(Icons.arrow_back_ios_new_rounded)),
        actions: [
          Icon(Icons.notifications_active_sharp),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 30,
                  width: 190,
                  decoration: BoxDecoration(
                    color:Color(0xff0e548b),
                    //color: Color(0xFFB22DC5),
                    borderRadius: BorderRadius.circular(05)
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.add, color: Colors.white,),
                      SizedBox(width: 02,),
                      InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Registration()));
                          },
                          child: Text('Create Service Requests', style: TextStyle(color: Colors.white),)),
                    ],
                  )
                ),
              ),
            ],
          ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text('My Raised Requests') ,
                    Spacer(),
                    Text('30100003118607') ,
                  ],
                ),
              )
        ],
      ),

    );
  }
}
