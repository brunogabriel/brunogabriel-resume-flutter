import 'package:flutter/material.dart';

class ResumeLoadingWidget extends StatelessWidget {
  const ResumeLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        width: 32.0,
        height: 32.0,
        child: CircularProgressIndicator(),
      ),
    );
  }
}
