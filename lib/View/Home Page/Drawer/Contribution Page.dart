import 'package:flutter/material.dart';

class ContributionScreen extends StatelessWidget {
  const ContributionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 32),
        child: Container(

          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/Contribution Page.jpg'),
              fit:BoxFit.cover,
            )
          ),
        ),
      ),

    );
  }
}
