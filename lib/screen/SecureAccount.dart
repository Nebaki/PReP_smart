import 'package:flutter/material.dart';
import 'package:prep_smart/screen/GetVerified.dart';

class SecureAccount extends StatefulWidget {
  const SecureAccount({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SecureAccountState createState() => _SecureAccountState();
}

class _SecureAccountState extends State<SecureAccount> {
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
                  "assets/SecureAcc.png",
                  height: 100,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Secure your account.",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(
                    focusColor: Color.fromARGB(255, 13, 53, 86),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Color.fromARGB(255, 13, 53, 86),
                    )),
                    hintText: 'Choose a security question',
                    prefixIcon: Icon(
                      Icons.question_mark_sharp,
                      color: Color.fromARGB(255, 13, 53, 86),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5.0,
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
                    hintText: 'Security question answer',
                    prefixIcon: Icon(Icons.question_answer_outlined,
                        color: Color.fromARGB(255, 13, 53, 86)),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(
                    focusColor: Color.fromARGB(255, 13, 53, 86),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Color.fromARGB(255, 13, 53, 86),
                    )),
                    hintText: 'Choose a 4-digit passcode',
                    prefixIcon: Icon(
                      Icons.password,
                      color: Color.fromARGB(255, 13, 53, 86),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5.0,
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
                    hintText: 'Confirm a 4-digit passcode',
                    prefixIcon: Icon(Icons.password,
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
              builder: (BuildContext context) => const GetVerified(),
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
