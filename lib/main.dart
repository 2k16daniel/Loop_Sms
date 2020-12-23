import 'package:flutter/material.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        //resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('SMS SPAMMER'),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                WholeUI(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ui handler
class WholeUI extends StatefulWidget {
  WholeUI({Key key}) : super(key: key);

  @override
  _WholeUIState createState() => _WholeUIState();
}

class _WholeUIState extends State<WholeUI> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          myTexview(),
          NumberField(),
          SmsField(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RepeatitionField(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DelayField(),
              ),
            ],
          ),
          Buttons(),
        ],
      ),
    );
  }
}

class NumberField extends StatelessWidget {
  const NumberField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
          primaryColor: Colors.redAccent, primaryColorDark: Colors.red),
      child: Container(
        width: 400,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            keyboardType: TextInputType.phone,
            maxLength: 11,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal)),
              hintText: 'input phone number here',
              helperText: 'only accepts 11 digits phone number',
              labelText: 'Phone number',
              prefixIcon: Icon(
                Icons.phone,
                color: Colors.green[700],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SmsField extends StatelessWidget {
  const SmsField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
          primaryColor: Colors.redAccent, primaryColorDark: Colors.red),
      child: Container(
        width: 400,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            style: TextStyle(),
            maxLength: 120,
            //expands: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal)),
              hintText: 'Input your message here',
              labelText: 'Message',
              prefixIcon: Icon(
                Icons.messenger,
                color: Colors.green[700],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class RepeatitionField extends StatelessWidget {
  const RepeatitionField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
          primaryColor: Colors.redAccent, primaryColorDark: Colors.red),
      child: Container(
        width: 180,
        child: TextField(
          textAlign: TextAlign.center,
          maxLength: 3,
          //expands: true,
          decoration: InputDecoration(
            border:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.teal)),
            hintText: 'No. of sms',
            labelText: 'Sms Count',
            prefixIcon: Icon(
              Icons.confirmation_number,
              color: Colors.green[700],
            ),
          ),
        ),
      ),
    );
  }
}

class DelayField extends StatelessWidget {
  const DelayField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
          primaryColor: Colors.redAccent, primaryColorDark: Colors.red),
      child: Container(
        width: 180,
        child: TextField(
          textAlign: TextAlign.center,
          maxLength: 7,
          //expands: true,
          decoration: InputDecoration(
            border:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.teal)),
            hintText: 'In milliseconds',
            labelText: 'Delay',
            prefixIcon: Icon(
              Icons.lock_clock,
              color: Colors.green[700],
            ),
          ),
        ),
      ),
    );
  }
}

class Buttons extends StatelessWidget {
  const Buttons({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ButtonTheme(
        minWidth: 100,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {},
                color: Colors.red[600],
                child: Icon(
                  Icons.cancel,
                  color: Colors.white70,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {},
                color: Colors.green[600],
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white70,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget myTexview() {
  return Container(
    child: Text(
      'SPAM!!',
      style: TextStyle(fontSize: 120),
    ),
  );
}
