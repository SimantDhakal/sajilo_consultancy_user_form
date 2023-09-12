import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:sajilo_consultancy_user_form/screen/form/view/user_form_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {

  late Animation _logoAnimation;
  late AnimationController _logoController;

  @override
  void initState() {
    super.initState();

    _logoController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _logoAnimation = CurvedAnimation(
      parent: _logoController,
      curve: Curves.fastOutSlowIn,
    );

    _logoAnimation.addListener(() {
      if (_logoAnimation.status == AnimationStatus.completed) {
        return;
      }
      setState(() {});
    });

    _logoController.forward();
    super.initState();
    startTime();
  }

  @override
  void dispose() {
    _logoController.dispose();
    super.dispose();
  }

  Future<void> navigationPage() async {
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (BuildContext context) => UserFormScreen()),
            (route) => false);
  }

  startTime() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, navigationPage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(46, 128, 98, 1),
      body: _buildLogo(),
    );
  }

  Widget _buildLogo() {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: MediaQuery.of(context).size.height/3 - 60),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90.0),
                        border: Border.all(color: Colors.white, width: 2.0)
                    ),
                    height: _logoAnimation.value * 120.0,
                    width: _logoAnimation.value * 120.0,
                    padding: const EdgeInsets.all(7.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(90.0),
                      child: Image.asset(
                        "assets/images/logo.png",
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),

                  const SizedBox(height: 30.0),

                  Text('Welcome to Sajilo Consultancy digital dashboard. Click anywhere to continue.',
                    style: TextStyle(fontSize: 15.0, color: Colors.grey[200]), textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            Text('Powered ©SajiloConsultancy',
              style: TextStyle(fontSize: 14.0, color: Colors.grey[400]), textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30.0),
          ],
        ),
      ),
    );
  }
}
