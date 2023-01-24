import 'package:flutter/material.dart';
import 'package:prep_smart/screen/acknowledgement.dart';
import 'package:prep_smart/screen/remind.dart';

class Reminder extends StatefulWidget {
  const Reminder({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ReminderState createState() => _ReminderState();
}

class _ReminderState extends State<Reminder> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: height,
        width: width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Image.asset(
                  "assets/reminder.png",
                  height: 100,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Get text reminders.",
                  style: TextStyle(
                      color: Color.fromARGB(255, 13, 53, 86),
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 15.0, left: 15.0, right: 10.0),
                child: Text(
                  "What number should we use to send you text message reminders?",
                  style: TextStyle(
                    color: Color.fromARGB(255, 13, 53, 86),
                    fontSize: 25,
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    focusColor: Color.fromARGB(255, 13, 53, 86),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Color.fromARGB(255, 13, 53, 86),
                    )),
                    hintText: 'Phone number for texting',
                    hintStyle: TextStyle(fontSize: 17),
                    prefixIcon: Icon(Icons.message,
                        color: Color.fromARGB(255, 13, 53, 86)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Material(
        color: const Color.fromARGB(255, 13, 53, 86),
        child: InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => const Acknowledgement(),
            ),
          ),
          child: const SizedBox(
            height: kToolbarHeight,
            width: double.infinity,
            child: Center(
              child: Text(
                'Next',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
