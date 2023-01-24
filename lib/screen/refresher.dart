import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:prep_smart/screen/remind.dart';

class Refresher extends StatefulWidget {
  const Refresher({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RefresherState createState() => _RefresherState();
}

class _RefresherState extends State<Refresher> {
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
                padding: const EdgeInsets.only(top: 50.0),
                child: Image.asset(
                  "assets/medicin.png",
                  height: 100,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Need a 2+1+1 refresher?",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                 children: const [
                    Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "2+1+1 works by taking:",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
              ),
                 ],
               ),
              const SizedBox(
                height: 20.0,
              ),
              
               Padding(
                padding: const EdgeInsets.all(8.0),
                child:RichText(
        text: const TextSpan(children: <TextSpan>[
              TextSpan(text: '2 pills ',
                  style: TextStyle(
                      color: Color.fromARGB(255, 13, 53, 86),fontWeight: FontWeight.bold ,fontSize: 18),   
              ),
              TextSpan(text: '2-24 hours before sex,then ',
                  style: TextStyle(
                      color: Color.fromARGB(255, 13, 53, 86) ,fontSize: 18),   
              ),TextSpan(text: '1 pill ',
                  style: TextStyle(
                      color: Color.fromARGB(255, 13, 53, 86),fontWeight: FontWeight.bold ,fontSize: 18),   
              ),TextSpan(text: 'every 24 hours, until 2 days after your last sex day.',
                  style: TextStyle(
                      color: Color.fromARGB(255, 13, 53, 86) ,fontSize: 18),   
              )
            ]
        ),
      ),
              ),
              
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SizedBox(
                    width: 25,
                    child: TextField(
                        decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 13, 53, 86),
                              width: 2.0)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.teal, width: 5.0)),
                    )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5.0, right: 5.0),
                    child: SizedBox(
                      width: 25,
                      child: TextField(
                          decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 13, 53, 86),
                                width: 2.0)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.teal, width: 5.0)),
                      )),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5.0, right: 5.0),
                    child: SizedBox(
                      width: 25,
                      child: TextField(
                          decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 13, 53, 86),
                                width: 2.0)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.teal, width: 5.0)),
                      )),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5.0, right: 5.0),
                    child: SizedBox(
                      width: 25,
                      child: TextField(
                          decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 13, 53, 86),
                                width: 2.0)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.teal, width: 5.0)),
                      )),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5.0, right: 5.0),
                    child: SizedBox(
                      width: 25,
                      child: TextField(
                          decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 13, 53, 86),
                                width: 2.0)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.teal, width: 5.0)),
                      )),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5.0, right: 5.0),
                    child: SizedBox(
                      width: 25,
                      child: TextField(
                          decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 13, 53, 86),
                                width: 2.0)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.teal, width: 5.0)),
                      )),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5.0, right: 5.0),
                    child: SizedBox(
                      width: 25,
                      child: TextField(
                          decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 13, 53, 86),
                                width: 2.0)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.teal, width: 5.0)),
                      )),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5.0, right: 5.0),
                    child: SizedBox(
                      width: 25,
                      child: TextField(
                          decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 13, 53, 86),
                                width: 2.0)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.teal, width: 5.0)),
                      )),
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
              builder: (BuildContext context) => const Remind(),
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
