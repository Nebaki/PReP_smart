import 'package:flutter/material.dart';
import 'package:prep_smart/screen/SecureAccount.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
                  "assets/register.png",
                  height: 100,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Register your new account.",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  decoration: InputDecoration(
                    focusColor: Color.fromARGB(255, 13, 53, 86),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Color.fromARGB(255, 13, 53, 86),
                    )),
                    hintText: 'First name (text input ON)',
                    prefixIcon: Icon(
                      Icons.person_outline,
                      color: Color.fromARGB(255, 13, 53, 86),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    focusColor: Color.fromARGB(255, 13, 53, 86),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Color.fromARGB(255, 13, 53, 86),
                    )),
                    hintText: 'Last name (text input OFF)',
                    prefixIcon: Icon(Icons.person_outline,
                        color: Color.fromARGB(255, 13, 53, 86)),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  decoration: InputDecoration(
                    focusColor: Color.fromARGB(255, 13, 53, 86),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Color.fromARGB(255, 13, 53, 86),
                    )),
                    hintText: 'Email address',
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: Color.fromARGB(255, 13, 53, 86),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    focusColor: Color.fromARGB(255, 13, 53, 86),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Color.fromARGB(255, 13, 53, 86),
                    )),
                    hintText: 'Choose accountPassword',
                    prefixIcon: Icon(Icons.lock,
                        color: Color.fromARGB(255, 13, 53, 86)),
                  ),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    focusColor: Color.fromARGB(255, 13, 53, 86),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Color.fromARGB(255, 13, 53, 86),
                    )),
                    hintText: 'Confirm accountPassword',
                    prefixIcon: Icon(Icons.lock,
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
              builder: (BuildContext context) => const SecureAccount(),
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
