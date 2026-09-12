import 'package:flutter/material.dart';
import 'package:practica1/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Image.asset(
                  'lib/images/Vinyl Vault RecordsFINAL.png', 
                  height: 200,
                  ),
              ),
          
              const SizedBox(height: 48),
              //title
              Text(
                'Vinyl Vault Records',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 24),


              //sub title
              Text(
                'Special editions and timeless classics in high-fidelity analog format.',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                  color: const Color.fromARGB(255, 126, 126, 126)
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 48),


              // start now button
              GestureDetector(
                onTap: () => Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => HomePage(),
                  )
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12)
                  ),
                  padding: EdgeInsets.all(24),
                  child: Center(
                    child: const Text(
                      'Shop Now',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}