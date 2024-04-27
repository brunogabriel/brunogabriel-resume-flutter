import 'package:flutter/material.dart';

class ResumeErrorWidget extends StatelessWidget {
  const ResumeErrorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Oops, something wrong happned'),
    );
  }
}
