import 'package:flutter/material.dart';

import '../home_page.dart';
class MyLoans extends StatefulWidget {
  const MyLoans({super.key});

  @override
  State<MyLoans> createState() => _MyLoansState();
}

class _MyLoansState extends State<MyLoans>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Loans',
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
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Color(0xff0e548b),),
                  ),
                  onPressed: () {},
                  child: Text('ACTIVE',style: TextStyle(color: Colors.white),)),
              Spacer(),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Color(0xff0e548b),
                    ),
                  ),
                  onPressed: () {},
                  child: Text('CLOSED',style: TextStyle(color: Colors.white),)),
              Spacer(),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Color(0xff0e548b),
                    ),
                  ),
                  onPressed: () {},
                  child: Text('IN PROGRESS',style: TextStyle(color: Colors.white),)),
            ],
          ),
        ],
      ),
    );
  }
}
