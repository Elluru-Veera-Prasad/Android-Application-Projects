import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  String firstname,email,phone,lastname,location,gender,nationality,religeion;
  WelcomePage({Key? key,required this.firstname,required this.lastname,
    required this.email,required this.phone,required this.location,
    required this.gender,
    required this.nationality,required this.religeion}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DETAILS'),
      ),
      body: Center(

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('FirstName        : $firstname'),
              Text('LastName         : $lastname'),
              Text('Email                : $email'),
              Text('Phone                : $phone'),
              Text('Location          : $location'),
              Text('Gender              : $gender'),
              Text('Nationality      : $nationality'),

              Text('Religeion         : $religeion'),

            ],
          ),
        ),
      ),
    );
  }
}