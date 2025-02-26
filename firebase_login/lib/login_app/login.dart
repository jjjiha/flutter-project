import 'package:firebase_login/my_button/my_button.dart';
import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Sign In',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0.2,
      ),
      body: _buildButton(),
    );
  }

  Widget _buildButton() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // ButtonTheme(
          //   height: 50.0,
          //   shape: const RoundedRectangleBorder(
          //     borderRadius: BorderRadius.all(
          //       Radius.circular(4.0),
          //     ),
          //   ),
          //   child: ElevatedButton(
          //     style: ElevatedButton.styleFrom(
          //       // foregroundColor: Colors.orangeAccent,
          //       backgroundColor: Colors.white,
          //     ),
          //     onPressed: () {},
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //       children: <Widget>[
          //         Image.asset('images/glogo.png'),
          //         const Text(
          //           'Login with Google',
          //           style: TextStyle(color: Colors.black87, fontSize: 15.0),
          //         ),
          //         Opacity(
          //           opacity: 0.0,
          //           child: Image.asset('images/glogo.png'),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          // const SizedBox(
          //   height: 10.0,
          // ),
          MyButton(
              image: Image.asset('images/glogo.png'),
              text: const Text(
                'Login with Google',
                style: TextStyle(color: Colors.black87, fontSize: 15.0),
              ),
              color: Colors.white,
              radius: 4.0,
              onPressed: () {}),
          const SizedBox(
            height: 10.0,
          ),
          ButtonTheme(
            height: 50.0,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(4.0),
              ),
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                // foregroundColor: Colors.orangeAccent,
                backgroundColor: const Color.fromARGB(255, 19, 31, 133),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset('images/flogo.png'),
                  const Text(
                    'Login with Facebook',
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                  Opacity(
                    opacity: 0.0,
                    child: Image.asset('images/glogo.png'),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          ButtonTheme(
            height: 50.0,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(4.0),
              ),
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                // foregroundColor: Colors.orangeAccent,
                backgroundColor: Colors.green,
              ),
              onPressed: () {},
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    Icons.mail,
                    color: Colors.white,
                  ),
                  Text(
                    'Login with Email',
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                  Opacity(
                    opacity: 0.0,
                    child: Icon(
                      Icons.mail,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
