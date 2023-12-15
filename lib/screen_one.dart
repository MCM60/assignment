import 'package:assignment/screen_two.dart';
import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  final TextEditingController textField1Controller = TextEditingController();
  final TextEditingController textField2Controller = TextEditingController();
  final TextEditingController textField3Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Assignment'),
          backgroundColor: Colors.grey,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: textField1Controller,
                decoration: InputDecoration(
                  labelText: ("Name"),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: textField2Controller,
                decoration: InputDecoration(
                    labelText: ("Number"), prefixIcon: Icon(Icons.call)),
              ),
              SizedBox(height: 10),
              TextField(
                controller: textField3Controller,
                decoration: InputDecoration(
                    labelText: ("Location"),
                    prefixIcon: Icon(Icons.location_city)),
              ),
              ElevatedButton(
                  onPressed: () {
                    String text1 = textField1Controller.text;
                    String text2 = textField2Controller.text;
                    String text3 = textField3Controller.text;

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => AnswerScreen(
                                text1: text1,
                                text2: text2,
                                text3: text3,
                              )),
                    );
                  },
                  child: Text('submit'))
            ],
          ),
        ));
  }
}
