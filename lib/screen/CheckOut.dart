import 'package:flutter/material.dart';
import 'package:prep_smart/screen/EditAccount.dart';
import 'package:prep_smart/screen/SecureAccount.dart';
import 'package:prep_smart/screen/success_create.dart';

class checkout extends StatefulWidget {
  const checkout({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _checkoutState createState() => _checkoutState();
}

class _checkoutState extends State<checkout> {
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
              const Padding(
                padding: EdgeInsets.only(top: 40.0),
                child: Text(
                  "This all checks out, right? ",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 5.0,
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
                    hintText: 'Nebyu',
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
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    focusColor: Color.fromARGB(255, 13, 53, 86),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Color.fromARGB(255, 13, 53, 86),
                    )),
                    hintText: 'Hussein',
                    prefixIcon: Icon(Icons.email_outlined,
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
                    hintText: 'Nebak@gmail.com',
                    prefixIcon: Icon(
                      Icons.lock,
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
                    hintText: '**********',
                    prefixIcon: Icon(Icons.lock,
                        color: Color.fromARGB(255, 13, 53, 86)),
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
                    hintText: 'Name of the city where I was born',
                    prefixIcon: Icon(Icons.location_on,
                        color: Color.fromARGB(255, 13, 53, 86)),
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
                    hintText: 'Addis ababa',
                    prefixIcon: Icon(Icons.location_on,
                        color: Color.fromARGB(255, 13, 53, 86)),
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
                    hintText: 'passcode',
                    prefixIcon: Icon(Icons.password,
                        color: Color.fromARGB(255, 13, 53, 86)),
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
                    hintText: '0932501353',
                    prefixIcon: Icon(Icons.phone,
                        color: Color.fromARGB(255, 13, 53, 86)),
                  ),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        const RoundedRectangleBorder(
                            side: BorderSide(
                                color: Color.fromARGB(255, 13, 53, 86))),
                      )),
                  child: const Text(
                    "Edit",
                    style: TextStyle(
                        color: Color.fromARGB(255, 13, 53, 86), fontSize: 15),
                  ),
                  onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => const EditAccount(),
            ),
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
              builder: (BuildContext context) => const Success(),
            ),
          ),
          child: const SizedBox(
            height: kToolbarHeight,
            width: double.infinity,
            child: Center(
              child: Text(
                'Confirm',
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
