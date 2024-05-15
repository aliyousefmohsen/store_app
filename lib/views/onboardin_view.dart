import 'package:flutter/material.dart';
import 'package:test_ali/views/explore_view.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/onboarding/image.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                'assets/images/onboarding/parrot.png',
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.80,
                child: const Text(
                  textAlign: TextAlign.center,
                  'Welcome to our store',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins',
                      fontSize: 48,
                      color: Colors.white),
                ),
              ),
              const SizedBox(height: 19),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.90,
                child: const Text(
                  textAlign: TextAlign.center,
                  'Ger your groceries in as fast as one hour',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff7C7C7C)),
                ),
              ),
              const SizedBox(height: 38),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xff53B175)),
                      minimumSize: MaterialStatePropertyAll(
                          Size(MediaQuery.of(context).size.width, 62))),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ExploreView();
                    }));
                  },
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              const SizedBox(height: 90),
            ],
          ),
        ),
      ),
    );
  }
}
