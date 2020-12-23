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
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              WholeUI(),
            ],
          ),
        ),
      ),
    );
  }
}

class WholeUI extends StatefulWidget {
  WholeUI({Key key}) : super(key: key);

  @override
  _WholeUIState createState() => _WholeUIState();
}

class _WholeUIState extends State<WholeUI> {
  final numberfield = TextEditingController();
  final smsfield = TextEditingController();
  @override
  void dispose() {
    numberfield.dispose();
    smsfield.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: NumberField(),
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
      child: TextField(
        keyboardType: TextInputType.phone,
        maxLength: 11,
        decoration: InputDecoration(
          border:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.teal)),
          hintText: 'input phone number here',
          helperText: 'only accepts 11 digits phone number',
          labelText: 'Phone number',
          prefixIcon: Icon(
            Icons.phone,
            color: Colors.green[700],
          ),
        ),
      ),
    );
  }
}
