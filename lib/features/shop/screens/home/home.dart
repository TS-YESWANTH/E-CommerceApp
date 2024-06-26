import 'package:e_commerce/common/widgets/custom_shapes/containers/primary_header_constainer.dart';
import 'package:flutter/material.dart';

class THomeScreen extends StatelessWidget {
  const THomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [TPrimaryHeaderContainer(child: Container())],
        ),
      ),
    );
  }
}
