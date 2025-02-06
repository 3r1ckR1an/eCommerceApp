import 'package:ecommerce_app/pages/home_page.dart';
import 'package:ecommerce_app/utilities/my_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  void _goToHomePage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context)
       => const HomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 250),
            Image.asset(
              'lib/images/nike_logo.png',
            ),
            SizedBox(height: 200),
            Text(
              "Just Do It",
              style: GoogleFonts.notoSansHatran(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 25),
            Text(
              "Brand new sneakers and custom kicks made with premium quality",
              style: GoogleFonts.notoSansHatran(
                fontSize: 15,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),
            MyButton(text: "Shop Now", onPressed: () => _goToHomePage(context)),
          ],
        ),
      ),
    );
  }
}
