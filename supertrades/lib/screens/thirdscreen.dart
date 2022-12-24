import 'package:flutter/material.dart';
import 'package:wc_form_validators/wc_form_validators.dart';
import 'package:supertrades/screens/fourthscreen.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  TextEditingController fullname = TextEditingController();
  TextEditingController nickname = TextEditingController();
  TextEditingController dob = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController gender = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fill Your Profile"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Form(
        key: _formkey,
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            const SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.center,
              child: Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                    ),
                    child: ClipOval(
                        child: Image.network(
                      'https://media.istockphoto.com/id/1300845620/vector/user-icon-flat-isolated-on-white-background-user-symbol-vector-illustration.jpg?s=612x612&w=0&k=20&c=yBeyba0hUkh14_jgv1OKqIH0CCSWU_4ckRkAoy2p73o=',
                      fit: BoxFit.cover,
                      height: 100,
                      width: 100,
                    )),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 3,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.edit,
                        color: Colors.blue,
                        size: 30,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: TextFormField(
                controller: fullname,
                obscureText: false,
                decoration: InputDecoration(
                    labelText: "Full Name",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(width: 2, color: Colors.grey))),
                validator: Validators.compose([
                  Validators.required('Full Name is required'),
                  Validators.patternString(
                      r"^[A-Za-z]+$", 'Only alphabets are allowed'),
                ]),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: TextFormField(
                controller: nickname,
                obscureText: false,
                decoration: InputDecoration(
                    labelText: "Nick Name",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(width: 2, color: Colors.grey))),
                validator: Validators.compose([
                  Validators.required('Nick Name is required'),
                  Validators.patternString(
                      r"^[A-Za-z]+$", 'Only alphabets are allowed'),
                ]),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: TextFormField(
                controller: dob,
                obscureText: false,
                decoration: InputDecoration(
                    labelText: "Date of Birth",
                    suffixIcon: const Icon(Icons.date_range_outlined),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(width: 2, color: Colors.grey))),
                validator: Validators.compose([
                  Validators.required('Date is required'),
                ]),
                keyboardType: TextInputType.phone,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: TextFormField(
                controller: email,
                obscureText: false,
                decoration: InputDecoration(
                    labelText: "Email",
                    suffixIcon: const Icon(Icons.email_outlined),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(width: 2, color: Colors.grey))),
                validator: Validators.compose([
                  Validators.required('Email is required'),
                  Validators.email('Invalid email')
                ]),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: TextFormField(
                controller: password,
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Password",
                    suffixIcon: const Icon(Icons.lock),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(width: 2, color: Colors.grey))),
                validator: Validators.compose([
                  Validators.required('Password is required'),
                  Validators.minLength(
                      8, 'Password cannot be less than 8 characters'),
                  Validators.maxLength(
                      15, 'Password cannot be greater than 15 characters'),
                ]),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: TextFormField(
                controller: gender,
                obscureText: false,
                decoration: InputDecoration(
                    labelText: "Gender",
                    suffixIcon: const Icon(Icons.arrow_drop_down_rounded),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(width: 2, color: Colors.grey))),
                validator: Validators.compose([
                  Validators.required('Gender is required'),
                  Validators.patternString(
                      r"^[A-Za-z]+$", 'Only alphabets are allowed'),
                ]),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: SizedBox(
                  height: 55,
                  child: ElevatedButton(
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          print(fullname.text);
                          print(nickname.text);
                          print(dob.text);
                          print(email.text);
                          print(password.text);
                          print(gender.text);
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FourthScreen()));
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      child: const Text(' Continue',
                          style: TextStyle(color: Colors.white, fontSize: 30))),
                ))
          ]),
        ),
      ),
    );
  }
}
