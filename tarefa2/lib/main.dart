import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0XFFEC7163),
              Color(0XFFEB5E6B),
              Color(0XFFE94B76),
            ],
          ),
        ),
        child: Column(
          children: [
            const Spacer(
              flex: 7,
            ),
            SizedBox(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/tinder_icon.png"),
                  const SizedBox(width: 10),
                  const Text(
                    "tinder",
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: "ChaletNewYork",
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(
              flex: 4,
            ),
            SizedBox(
              width: 200,
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white38,
                    fontFamily: "Britanica",
                  ),
                  children: [
                    TextSpan(
                        text:
                            "By tapping Create account or Sign In, you agree to our "),
                    TextSpan(
                      text: "Terms",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white54,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(text: ". Learn how we process your data in our "),
                    TextSpan(
                      text: "Privacy Policy ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white54,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(text: "and "),
                    TextSpan(
                      text: "Cookies Policy",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white54,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(text: "."),
                  ],
                ),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            Column(
              children: const [
                ButtonLogin(
                  pathImage: "assets/images/apple_icon.png",
                  text: "SIGN IN WITH APPLE",
                ),
                SizedBox(height: 5),
                ButtonLogin(
                  pathImage: "assets/images/facebook_icon.png",
                  text: "SIGN IN WITH FACEBOOK",
                ),
                SizedBox(height: 5),
                ButtonLogin(
                  pathImage: "assets/images/speech_bubble_icon.png",
                  text: "SIGN IN WITH PHONE NUMBER",
                ),
              ],
            ),
            const Spacer(
              flex: 1,
            ),
            const Text(
              "Trouble Signing In?",
              style: TextStyle(
                fontSize: 10,
                color: Colors.white38,
                fontFamily: "Britanica",
              ),
              textAlign: TextAlign.center,
            ),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonLogin extends StatelessWidget {
  final String pathImage;
  final String text;

  const ButtonLogin({
    Key? key,
    required this.pathImage,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 35,
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white30,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(20),
        color: Colors.transparent,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 14,
            height: 14,
            child: Image.asset(
              pathImage,
            ),
          ),
          Expanded(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 10,
                color: Colors.white60,
                fontFamily: "Britanica",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
