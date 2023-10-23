import 'package:bloodapp/auth/home_view.dart';
import 'package:bloodapp/auth/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> _signInWithEmailAndPassword(
      String email, String password, context) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (userCredential.user != null) {
        // Navigation to the home screen, you can replace 'HomeScreen' with your actual home screen.
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomeView()),
        );
      }
    } on FirebaseAuthException catch (e) {
      Fluttertoast.showToast(msg: e.message.toString());
      if (e.toString() == 'An internal error has occurred.') {
        print('Wrong');
      }
    }
  }

// void loginUser() {
//     // Perform authentication logic here
//     String username = emailController.text;
//     String password = passwordController.text;

//     // Dummy check for successful login (Replace with your actual authentication logic)
//     if (username == 'abc@gmail.com' && password == '123456') {
//       // Navigate to the next screen
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => const HomeView(),
//         ),
//       );
//     } else {
//       // Show an error message or handle authentication failure
//       showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return const AlertDialog(
//             title: Text('Login Failed'),
//             content: Text('Invalid username or password.'),
//             actions: <Widget>[
//               // FlatButton(
//               //   onPressed: () {
//               //     Navigator.of(context).pop();
//               //   },
//               //   child: Text('OK'),
//               // ),
//             ],
//           );
//         },
//       );
//     }
//   }

  // loginUser() async {
  //   try {
  //     await FirebaseAuth.instance.signInWithEmailAndPassword(
  //       email: emailController.text,
  //       password: passwordController.text,
  //     );
  //     emailController.clear();
  //     passwordController.clear();

  //     print("=============== LoggedIn Successfully ===================");
  //   } on FirebaseAuthException catch (e) {
  //     if (e.code == 'user-not-found') {
  //       print('No user found for that email.');
  //     } else if (e.code == 'wrong-password') {
  //       print('Wrong password provided for that user.');
  //     }
  //   } catch (e) {
  //     print("=============== Catch ===================");
  //     print(e);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      // alignment: Alignment.center,
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 1.00,
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.32,
                width: double.infinity,
                color: const Color(0xffeb3738),
                child: Image.asset(
                  'assets/images/logo.png',
                  height: 50,
                  width: 50,
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.40,
                width: double.infinity,
                color: const Color(0xffffffff),
              ),
            ],
          ),
        ),
        Container(
          height: 250,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 150),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade500,
                  blurRadius: 10,
                )
              ]),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: TextField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      hintText: 'email',
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: const InputDecoration(
                      hintText: 'password',
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {
                    String email = emailController.text.trim();
                    String password = passwordController.text.trim();
                    _signInWithEmailAndPassword(email, password, context);
                  },
                  child: const Text("Login"),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpView(),
                      ),
                    );
                  },
                  child: const Text(
                    "Don't have already Account, Register here.",
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
