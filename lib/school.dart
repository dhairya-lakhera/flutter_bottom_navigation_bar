import 'package:flutter/material.dart';

class School extends StatefulWidget {
  School({
    Key? key,
  }) : super(key: key);

  @override
  State<School> createState() => _SchoolState();
}

class _SchoolState extends State<School> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('School'),
    );
  }
}
