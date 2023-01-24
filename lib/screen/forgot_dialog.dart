import 'package:flutter/material.dart';
import 'package:prep_smart/screen/get_new_passcode.dart';

class BuildDialog extends StatelessWidget {
  const BuildDialog({Key? key}) : super(key: key);

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
        ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                const RoundedRectangleBorder(
                    side: BorderSide(color: Color.fromARGB(255, 13, 53, 86))),
              )),
          child: const Text(
            "Back to Login",
            style:
                TextStyle(color: Color.fromARGB(255, 13, 53, 86), fontSize: 15),
          ),
          onPressed: () => Navigator.pop(context),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 13, 53, 86)),
              child: const Text(
                "Get New Password",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              onPressed: () => Navigator.pushReplacement<void, void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const GetNewPassword(),
                    ),
                  )),
        )
      ];
    }

    getColButtons(context) {
      return [
        ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: const BorderSide(
                        color: Color.fromARGB(255, 13, 53, 86))),
              )),
          child: const Text(
            "Back to Login",
            style:
                TextStyle(color: Color.fromARGB(255, 13, 53, 86), fontSize: 15),
          ),
          onPressed: () => Navigator.pop(context),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 13, 53, 86)),
            child: const Text(
              "Get New Password",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            onPressed: () => Navigator.pop(context),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            getCloseButton(context),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: Column(
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
                    "Enter your email address and we’ll send you a new password. Then, log in to update your password",
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
                      hintText: 'Email address',
                      prefixIcon: Icon(
                        Icons.email_outlined,
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
              padding: const EdgeInsets.only(bottom: 20, left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
