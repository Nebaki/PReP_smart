import 'package:flutter/material.dart';

import 'forgot.dart';

class GetNewPassword extends StatefulWidget {
  const GetNewPassword({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _GetNewPasswordState createState() => _GetNewPasswordState();
}

class _GetNewPasswordState extends State<GetNewPassword> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(248, 241, 241, 1),
      body: SizedBox(
        height: height,
        width: width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 110.0),
                child: RichText(
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                          child: Image.asset(
                        "assets/login.png",
                        height: 60,
                      )),
                      const TextSpan(
                        style: TextStyle(
                            color: Color.fromARGB(255, 13, 53, 86),
                            fontSize: 55),
                        text: "PrEPsmart",
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 90.0,
              ),
              const Text(
                "Enter your passcode:",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Row(
                  children: const [
                    SizedBox(
                      width: 50,
                      child: TextField(
                          decoration: InputDecoration(
                        border: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 13, 53, 86),
                                width: 6)),
                      )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0, right: 10.0),
                      child: SizedBox(
                        width: 50,
                        child: TextField(
                            decoration: InputDecoration(
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 13, 53, 86),
                                  width: 6)),
                        )),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0, right: 10.0),
                      child: SizedBox(
                        width: 50,
                        child: TextField(
                            decoration: InputDecoration(
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 13, 53, 86),
                                  width: 6)),
                        )),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0, right: 10.0),
                      child: SizedBox(
                        width: 50,
                        child: TextField(
                            decoration: InputDecoration(
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 13, 53, 86),
                                  width: 6)),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, top: 10, bottom: 10),
                child: TextButton(
                  child: const Text(
                    'Forgot password?',
                    style: TextStyle(
                        fontSize: 18, color: Color.fromARGB(255, 13, 53, 86)),
                  ),
                  onPressed: () {
                    showGeneralDialog(
                        context: context,
                        pageBuilder: (BuildContext buildContext,
                            Animation animation, Animation secondaryAnimation) {
                          return const ForgotPassword();
                        });
                  },
                ),
              ),
              const SizedBox(height: 20.0),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width - 50,
                color: const Color.fromARGB(255, 255, 205, 129),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: RichText(
                            textAlign: TextAlign.start,
                            text: const TextSpan(
                                text: "Dev Note:",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold))),
                      ),
                      RichText(
                          textAlign: TextAlign.start,
                          text: const TextSpan(
                            text: "Optional Touch ID/Face ID to log in",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
