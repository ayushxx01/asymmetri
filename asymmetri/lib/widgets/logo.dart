import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      height: 100,
      width: 100,
      fit: BoxFit.cover,
      'https://firebasestorage.googleapis.com/v0/b/mcmr-5fb7f.appspot.com/o/Other%2F2%20Asymmetri_White%20on%20black.jpg?alt=media&token=47c2dbb1-6807-4f54-8366-73300816f671',
    );
  }
}
