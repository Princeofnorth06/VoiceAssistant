import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:rap/home_page.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetoHome();
  }

  _navigatetoHome() async {
    await Future.delayed(const Duration(milliseconds: 3000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ZoomIn(
              child: SizedBox(
                child: getImageWidget(
                    'assets/images/sp1.jpg'), // Adjust the image path here
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            BounceInDown(
              child: const Text(
                '\t\t\t\t              Hello,\nI am your Voice Assistant',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget getImageWidget(String imagePath) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: Image.asset(
        imagePath,
        height: 150,
        width: 150,
        fit: BoxFit.cover,
      ),
    );
  }
}
