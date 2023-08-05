import 'package:flutter/material.dart';

import 'package:majorproject/welcomepage.dart';
void main() {
  runApp( MaterialApp(
    title: 'Named Route Navigation',
    theme: ThemeData(
      // This is the theme of your application.
      primarySwatch: Colors.green,
    ),
    // Start the app with the "/" named route. In this case, the app starts
    // on the FirstScreen widget.
    initialRoute: '/',
    routes: {
      // When navigating to the "/" route, build the FirstScreen widget.
      '/': (context) => const HomeScreen(),
      // When navigating to the "/second" route, build the SecondScreen widget.
      '/second': (context) => const SecondScreen(),

    },
  ));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SIGN UP PAGE'),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.orangeAccent,
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
          child: const Text('SIGN UP'),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Register User',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Form(),
    );
  }
}

class Form extends StatefulWidget {
  const Form({Key? key}) : super(key: key);

  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<Form> {
  TextEditingController _firstname = TextEditingController();
  TextEditingController _lastname = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _phone = TextEditingController();
  TextEditingController _location = TextEditingController();
  TextEditingController _gender = TextEditingController();
  TextEditingController _nationality = TextEditingController();
  TextEditingController _religion = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Register User'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _firstname,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your FirstName'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _lastname,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your LastName'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _email,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your Email'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _phone,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your Phone No'
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _gender,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your Gender'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _location,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your Location'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _nationality,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your Nationality'
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _religion,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your Religion'
                ),
              ),
            ),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context)=>WelcomePage(
                      firstname: _firstname.text, lastname:_lastname.text,
                      email: _email.text, phone: _phone.text,
                      location: _location.text, gender: _gender.text,
                      nationality: _nationality.text,religeion: _religion.text)));
            }, child: const Text('Submit'))
          ],
        ),
      ),
    );
  }
}
