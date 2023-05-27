import 'package:chatting_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).primaryColor,
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment:  CrossAxisAlignment.center,
              children: <Widget> [
                const Text("BlaBlaChat",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10,),
                const Text("Login now to chat with your besties!", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
                Image.asset("assets/login-talking.jpg"),
                const SizedBox(height: 15),
                TextFormField(
                  decoration: textInputDecoration.copyWith(
                    labelText: "Email",
                    prefixIcon: const Icon(
                      Icons.email,
                      color: Colors.black,
                    )),
                  onChanged: (input) {
                    setState(() {
                      email = input;
                    });
                  },
                ),
                const SizedBox(height: 15),
                TextFormField(
                  obscureText: true,
                  decoration: textInputDecoration.copyWith(
                      labelText: "Password",
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Colors.black,
                      )),
                  onChanged: (input) {
                    setState(() {
                      password = input;
                    });
                  },
                ),
              ],
            )
          ),
        ),
      ),
    );
  }
}
