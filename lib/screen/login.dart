import 'package:flutter/material.dart';
import 'package:prep_smart/screen/Register.dart';
import 'package:prep_smart/screen/forgot_dialog.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                height: 60.0,
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
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    focusColor: Color.fromARGB(255, 13, 53, 86),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Color.fromARGB(255, 13, 53, 86),
                    )),
                    hintText: 'Password',
                    prefixIcon: Icon(Icons.lock,
                        color: Color.fromARGB(255, 13, 53, 86)),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, top: 10, bottom: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50),
                      backgroundColor: const Color.fromARGB(255, 13, 53, 86)),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 237, 233, 233)),
                  ),
                  onPressed: () {},
                ),
              ),
              const SizedBox(height: 20.0),
              TextButton(
                  onPressed: () {
                    showGeneralDialog(
                        context: context,
                        pageBuilder: (BuildContext buildContext,
                            Animation animation, Animation secondaryAnimation) {
                          return const BuildDialog();
                        });
                  },
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(color: Color.fromARGB(255, 13, 53, 86)),
                  )),
              TextButton(
                style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: const Size(20, 10),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    alignment: Alignment.centerLeft),
                child: const Text(
                  "Get started! Register new account",
                  style: TextStyle(
                      fontSize: 18, color: Color.fromARGB(255, 13, 53, 86)),
                ),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const Register(),
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
