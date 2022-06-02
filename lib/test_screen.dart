import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  void didChangeDependencies() {
    print('log test 1');
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    print('log test 2');
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.symmetric(
            horizontal: getValueForScreenType(
              context: context,
              mobile: 22,
            ),
          ),
          child: const TextField(),
        ),
      ),
    );
  }
}
