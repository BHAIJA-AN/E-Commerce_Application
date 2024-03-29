import 'package:flutter/material.dart';
import 'Successful_change.dart';
import 'forgot_password_page.dart';
import 'login_page.dart';

class CreateNewPassword extends StatelessWidget {
  const CreateNewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 45, top: 90),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return const ForgotPassword();
                  }));
                },
                style: TextButton.styleFrom(
                  alignment: const Alignment(0, 0),
                  padding: const EdgeInsets.only(left: 8.0),
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          color: Color.fromARGB(255, 212, 213, 225),
                          width: 1,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(16)),
                  minimumSize: const Size(50.0, 50.0),
                ),
                child: const Icon(Icons.arrow_back_ios,
                    color: Color.fromARGB(255, 85, 91, 224)),
              ),
            ),
            const SizedBox(
              height: 37,
            ),
            Container(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: const Text(
                "Create New Password",
                style: TextStyle(
                  color: Color.fromARGB(255, 85, 91, 224),
                  //fontFamily: ur,
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 25, top: 15, right: 25),
              child: const Column(
                children: [
                  Text(
                    "Your new password must be unique from those previously used.",
                    style: TextStyle(
                        color: Color.fromARGB(255, 106, 115, 125),
                        fontSize: 18),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 60, left: 23, right: 23),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        hintText: "New Password",
                        fillColor: const Color.fromARGB(255, 245, 245, 245),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Confirm Password",
                        fillColor: const Color.fromARGB(255, 245, 245, 245),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 85, 91, 224),
                      foregroundColor: Colors.white,
                      //fixedSize: const Size(2000.0, 50.0),
                      //padding: const EdgeInsets.only(left:165, right: 165, top: 20, bottom: 20),

                      shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              color: Color.fromARGB(255, 85, 91, 224),
                              width: 1,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(7)),
                      minimumSize: Size(screenWidth - 40.0, 60.0),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return const PasswordChanged();
                      }));
                    },
                    child: const Text(
                      "Reset Password",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 300),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor:
                            const Color.fromARGB(255, 53, 194, 194),
                      ),

                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                          return const LoginPage();
                        }));
                      },

                      //child: const Text("Don't have an account? Register Now", style: TextStyle(decoration: TextDecoration.underline, decorationColor: Color.fromARGB(255, 53, 194, 194)),),
                      child: RichText(
                          text: const TextSpan(
                              text: "Remember Password?",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 85, 91, 224),
                                  fontSize: 16),
                              children: <TextSpan>[
                            TextSpan(
                                text: " Login",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 53, 194, 194),
                                    fontSize: 16))
                          ])),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
