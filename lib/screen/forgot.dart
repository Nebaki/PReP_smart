import 'package:flutter/material.dart';
import 'package:prep_smart/screen/ForgotAfterGetingPasscode.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var buttonsRowDirection = 1;
    ShapeBorder defaultShape() {
      return RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
        side: const BorderSide(
          color: Colors.deepOrange,
        ),
      );
    }

    getCloseButton(context) {
      return Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
        child: GestureDetector(
          onTap: () {},
          child: Container(
            alignment: FractionalOffset.topRight,
            child: GestureDetector(
              child: const Icon(
                Icons.clear,
                color: Color.fromARGB(255, 13, 53, 86),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
      );
    }

    getRowButtons(context) {
      return [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 13, 53, 86)),
              child: const Text(
                "Reset Passcode",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              onPressed: () => Navigator.pushReplacement<void, void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) =>
                          const ForgotAfterGetingPasscode_2(),
                    ),
                  )),
        )
      ];
    }

    getColButtons(context) {
      return [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 13, 53, 86)),
          child: const Text(
            "Reset Passcode",
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          onPressed: () => Navigator.pushReplacement<void, void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) =>
                          const ForgotAfterGetingPasscode_2(),
                    ),
                  ),
        )
      ];
    }

    return AlertDialog(
      backgroundColor: Colors.white,
      shape: defaultShape(),
      insetPadding: const EdgeInsets.all(15),
      elevation: 10,
      titlePadding: const EdgeInsets.only(bottom: 23.0),
      title: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            getCloseButton(context),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Reset your  password.             ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Answer your security question to reset your passcode.",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      focusColor: Color.fromARGB(255, 13, 53, 86),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Color.fromARGB(255, 13, 53, 86),
                      )),
                      hintText: '[Add security question]',
                      prefixIcon: Icon(
                        Icons.question_mark_sharp,
                        color: Color.fromARGB(255, 13, 53, 86),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      focusColor: Color.fromARGB(255, 13, 53, 86),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Color.fromARGB(255, 13, 53, 86),
                      )),
                      hintText: 'Your answer',
                      prefixIcon: Icon(
                        Icons.question_answer_outlined,
                        color: Color.fromARGB(255, 13, 53, 86),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      contentPadding: const EdgeInsets.all(8),
      content: buttonsRowDirection == 1
          ? Padding(
              padding: const EdgeInsets.only(
                bottom: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: getRowButtons(context),
              ),
            )
          : Padding(
              padding: const EdgeInsets.only(bottom: 20, left: 15),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: getColButtons(context),
              ),
            ),
    );
  }
}
