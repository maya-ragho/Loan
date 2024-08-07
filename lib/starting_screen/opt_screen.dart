import 'package:flutter/material.dart';

import '../home_page.dart';
class OTPScreen extends StatefulWidget {
  String mobileNumber;
  OTPScreen({super.key, required this.mobileNumber, required String? verificationId});
  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController otpController = TextEditingController();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('OTP Screen'),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextFormField(
                controller: otpController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    hintText: "Enter The OTP",
                    suffixIcon: Icon(Icons.phone),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25))),
                  validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the OTP';
                  }
                  return null;
                },
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ));
                  } else{
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Please enter the OTP'))
                    );
                  }

                },
                child: Text('Verify OTP'))
          ],
        ),
      ),
    );
  }
}

