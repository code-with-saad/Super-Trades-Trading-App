import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:supertrades/screens/secondscreen.dart';
import 'package:supertrades/screens/thirdscreen.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: Column(children: [
          Container(
            margin: const EdgeInsets.only(top: 100),
            decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage("images/logo1.png"))),
            child: Container(
              margin: const EdgeInsets.only(top: 180),
              child: const Text(
                "Let's you in",
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.black,
                    wordSpacing: 5,
                    fontWeight: FontWeight.w800),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          OutlinedButton(
              onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => ThirdScreen()));
              },
              style: OutlinedButton.styleFrom(
                shape: const StadiumBorder(),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 40, right: 40, top: 6, bottom: 6),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(
                      Icons.facebook,
                      size: 30,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      "Continue with Facebook",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    )
                  ],
                ),
              )),
          const SizedBox(
            height: 8,
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => ThirdScreen()));
            },
            style: OutlinedButton.styleFrom(
              shape: const StadiumBorder(),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 45, right: 45, top: 8, bottom: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: const [
                  FaIcon(FontAwesomeIcons.google,
                      size: 28, color: Color.fromARGB(255, 233, 3, 3)),
                  SizedBox(
                    width: 14,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    "Continue with Google",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          OutlinedButton(
              onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => ThirdScreen()));
              },
              style: OutlinedButton.styleFrom(
                shape: const StadiumBorder(),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 44, right: 44, top: 6, bottom: 6),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(
                      Icons.apple,
                      color: Colors.black,
                      size: 33,
                    ),
                    SizedBox(width: 15),
                    Text(
                      textAlign: TextAlign.center,
                      "Continue with Apple",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    )
                  ],
                ),
              )),
          const SizedBox(
            height: 35,
          ),
          const Center(child: Text("or")),
          const Divider(),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SecondScreen()));
              },
              style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 50, right: 50, top: 15, bottom: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text(
                      textAlign: TextAlign.center,
                      "Sign in with password",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )
                  ],
                ),
              )),
          const SizedBox(
            height: 30,
          ),
          const Text("Don't have an account?"),
          TextButton(onPressed: () {
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => ThirdScreen()));
          }, child: const Text("Sign up"))
        ]),
      ),
    ));
  }
}
