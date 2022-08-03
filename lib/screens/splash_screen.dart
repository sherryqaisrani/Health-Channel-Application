import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: Text(
          'Healthy-Channel',
          style: Theme.of(context).textTheme.headline1!.copyWith(
                color: Theme.of(context).colorScheme.background,
              ),
        ),
      ),
    );
  }
}
