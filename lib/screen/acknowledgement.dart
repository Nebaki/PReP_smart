import 'package:flutter/material.dart';
import 'package:prep_smart/screen/CheckOut.dart';
import 'package:prep_smart/screen/reminder.dart';

class Acknowledgement extends StatefulWidget {
  const Acknowledgement({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AcknowledgementState createState() => _AcknowledgementState();
}

class _AcknowledgementState extends State<Acknowledgement> {
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 50.0,
                ),
                child: Image.asset(
                  "assets/love.png",
                  height: 100,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 18.0,),
                child: Text(
                  "Have your own back.",
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
                  "We’re here to support you, but make sure you’re looking out for yourself too.",
                  style: TextStyle(
                    color: Color.fromARGB(255, 13, 53, 86),
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "This application is provided without guarantee. It may contain bugs, or you may miss seeing the dosing reminders.",
                  style: TextStyle(
                    color: Color.fromARGB(255, 13, 53, 86),
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      "By continuing, you acknowledge that you are solely responsible for keeping track of your pills and making sure your dosing is completed within your dosing windows. ",
                      style: TextStyle(
                        color: Color.fromARGB(255, 13, 53, 86),
                        fontSize: 20,
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
              builder: (BuildContext context) => const checkout(),
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
