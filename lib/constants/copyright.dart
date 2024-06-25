import 'package:flutter/material.dart';

class Copyright extends StatelessWidget {
  const Copyright({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Copyright © 2024 Abdul Moqeet. All Rights Reserved.', style: TextStyle(fontSize: 15, color: Colors.black87),),
    );
  }
}