import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home_page.dart';

class ConstructionFinanceLoan extends StatefulWidget {
  const ConstructionFinanceLoan({super.key});

  @override
  State<ConstructionFinanceLoan> createState() =>
      _ConstructionFinanceLoanState();
}

class _ConstructionFinanceLoanState extends State<ConstructionFinanceLoan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Construction Finance Loan',
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
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/white_bg2.jpg'), // replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0))),
                          backgroundColor:
                              MaterialStatePropertyAll(Color(0xff0e548b))),
                      onPressed: () {},
                      child: Text(
                        'ACTIVE',style: TextStyle(color: Colors.white),
                      )),
                  Spacer(),
                  ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0))),
                          backgroundColor:
                              MaterialStatePropertyAll(Color(0xff0e548b))),
                      onPressed: () {},
                      child: Text(
                        'ACTIVE',
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
