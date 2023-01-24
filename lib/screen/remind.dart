import 'package:flutter/material.dart';
import 'package:prep_smart/screen/reminder.dart';

class Remind extends StatefulWidget {
  const Remind({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RemindState createState() => _RemindState();
}

class _RemindState extends State<Remind> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor:  Colors.white,
      body: SizedBox(
        height: height,
        width: width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top:50.0),
                child: Image.asset(
                  "assets/remind.png",
                  height: 100,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 18.0,),
                child: Text(
                  "We’ll remind you.",
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
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "You’ll receive notification reminders on your phone when it’s time for your next dose. ",
                  style: TextStyle(
                    color: Color.fromARGB(255, 13, 53, 86),
                    fontSize: 25,
                  ),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "If we think you might miss your dose, the app will send you a text message reminder.",
                  style: TextStyle(
                    color: Color.fromARGB(255, 13, 53, 86),
                    fontSize: 25,
                  ),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      "Let’s set this up now. ",
                      style: TextStyle(
                        color: Color.fromARGB(255, 13, 53, 86),
                        fontSize: 25,
                      ),
                    ),
                  ),
                ],
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
              builder: (BuildContext context) => const Reminder(),
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
