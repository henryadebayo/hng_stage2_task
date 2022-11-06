import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'appbarlogo.dart';
import 'const.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KdarkBlueColour,
        centerTitle: true,
        title: const Text(
          "HNG InternShip",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: const [
          appbarLogo(),
          SizedBox(
            width: 25.0,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20.0),
            Container(
              height: 150.0,
              width: 150.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                image: const DecorationImage(
                    image: AssetImage("images/image4.jpeg"), fit: BoxFit.cover),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Center(
              child: Text(
                "Hi Welcome to my portfolio 👋",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w300),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, right: 20.0, top: 20.0, bottom: 20.0),
              child: Container(
                width: double.infinity,
                height: 500.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: const Color(0xFF0E3E3E3)),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 20.0,
                      ),
                      Column(
                        children: const [
                          Text(" First Name:"),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "Henry",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 20.0),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                        ],
                      ),
                      Column(
                        children: const [
                          Text("Last Name:"),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "Adebayo",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 20.0),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                        ],
                      ),
                      Column(
                        children: const [
                          Text("EmailAddress:"),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "henryadebayo250@gmail.com",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 20.0),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                        ],
                      ),
                      Column(
                        children: const [
                          Text("Phone Number:"),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "08186746590",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 20.0),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                        ],
                      ),
                      Column(
                        children: const [
                          Text("My Tech stack:"),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "Mobile (Flutter)",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 20.0),
                          ),
                          SizedBox(
                            height: 20.0,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Text("Click on the button to know more about me"),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RoundWhiteButton(
                    label: "Twitter",
                    onTap: _launchURL3,
                    height: 40.0,
                  ),
                  RoundWhiteButton(
                    label: "LinkedIn",
                    onTap: _launchURL2,
                    height: 40.0,
                  ),
                  RoundWhiteButton(
                    label: "GitHub",
                    onTap: _launchURL1,
                    height: 40.0,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  _launchURL1() async {
    final url = Uri.parse("https://www.github.com/henryadebayo");
    if (await launchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURL2() async {
    final url = Uri.parse("https://www.linkedin.com/in/henryadebayo");
    if (await launchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURL3() async {
    final url = Uri.parse("https://www.twitter.com/henryadebayoo");
    if (await launchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

class RoundWhiteButton extends StatelessWidget {
  final String label;
  final double height;
  final double? width;
  var onTap;

  RoundWhiteButton({
    Key? key,
    required this.label,
    required this.height,
    this.width,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 40.0),
      height: height,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0.0,
          backgroundColor: Colors.white,
          minimumSize: const Size(88, 36),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: const BorderSide(color: KdarkBlueColour),
          ),
        ),
        onPressed: onTap,
        child: Text(label,
            style: const TextStyle(fontSize: 20.0, color: KdarkBlueColour)),
      ),
    );
  }
}
