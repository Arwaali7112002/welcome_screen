import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text "Welcome to WhatsApp"
            const Text(
              "Welcome to WhatsApp",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 60), // Space between text and image

            // Circular image with black background
            Container(
              height: 300,
              width: 300,
              decoration: const BoxDecoration(
                color: Colors.black, // Black background
                shape: BoxShape.circle, // Circular container
              ),
              child: ClipOval(
                child: Image.asset(
                  'images/whatsapp_logo.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 60), // Space between image and button

            // Text "Read our Privacy Policy ..."
            const Text(
              "Read our Privacy Policy. Tap 'Agree and continue' to accept the Terms of Service.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white54,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 20), // Space between text and button

            // "Agree and Continue" button
            ElevatedButton(
              onPressed: () {
                // Add your onPressed logic here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    const Color(0xFF25D366), // WhatsApp green color
                padding:
                    const EdgeInsets.symmetric(horizontal: 70, vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: const Text(
                "AGREE AND CONTINUE",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
