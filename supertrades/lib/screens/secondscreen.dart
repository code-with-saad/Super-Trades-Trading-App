import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:supertrades/screens/fourthscreen.dart';
import 'package:supertrades/screens/thirdscreen.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  var errortext = 'Login Failed';
  loginfunction() {
    if (email.text == "admin@gmail.com" && password.text == "123456") {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const FourthScreen()));
    } else {
      Navigator.pushReplacement(context,
      MaterialPageRoute(builder: (context) => const SecondScreen()));
    }
  }

  final allchecked = Checkboxmodel(title: "Remember me");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          elevation: 0,
          foregroundColor: Colors.black,
        ),
        body: Center(
          child: Column(children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/logo.png"))),
              child: Container(
                margin: const EdgeInsets.only(top: 150),
                child: const Text(
                  "Login to Your Account",
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.black,
                      wordSpacing: 5,
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 350, right: 350),
              child: Column(children: [
                TextField(
                  maxLength: 35,
                  controller: email,
                  obscureText: false,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.mail_outline),
                    labelText: "Email",
                  ),
                ),
                TextField(
                  maxLength: 10,
                  controller: password,
                  obscureText: true,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.lock_outline_rounded),
                    labelText: "Password",
                    suffixIcon: Icon(Icons.visibility_off_rounded),
                    fillColor: Color.fromRGBO(250, 250, 250, 1),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                        value: allchecked.value,
                        onChanged: (value) {
                          setState(() {
                            allchecked.value = !allchecked.value;
                          });
                        }),
                    Text(
                      allchecked.title,
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      Text(email.text);
                      Text(password.text);
                      loginfunction();
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
                        children: [
                          const Text(
                            textAlign: TextAlign.center,
                            "Sign in",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ],
                      ),
                    )),
                const SizedBox(
                  height: 25,
                ),
                TextButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text(
                        textAlign: TextAlign.center,
                        "Forgot the password?",
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text("or continue with"),
                const Divider(),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ThirdScreen()));
                        },
                        child: const Icon(
                          Icons.facebook,
                          size: 35,
                        )),
                    const SizedBox(
                      width: 5,
                    ),
                    OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ThirdScreen()));
                        },
                        child: const FaIcon(
                          FontAwesomeIcons.google,
                          size: 35,
                          color: Colors.red,
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ThirdScreen()));
                        },
                        child: const Icon(
                          Icons.apple,
                          size: 35,
                          color: Colors.black,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text("Don't have an account?"),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ThirdScreen()));
                    },
                    child: const Text("Sign up"))
              ]),
            )
          ]),
        ));
  }
}

class Checkboxmodel {
  String title;
  bool value;
  Checkboxmodel({required this.title, this.value = false});
}
