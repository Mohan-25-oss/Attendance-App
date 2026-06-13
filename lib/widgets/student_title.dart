import 'package:flutter/material.dart';

class StudentTile extends StatelessWidget {
  final String name;
  final bool isPresent;
  final ValueChanged<bool?> onChanged;

  const StudentTile({
    super.key,
    required this.name,
    required this.isPresent,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(
        name,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
      value: isPresent,
      activeColor: Colors.green,
      onChanged: onChanged,
      secondary: CircleAvatar(
        backgroundColor: isPresent
            ? Colors.green
            : Colors.black38,
        child: Icon(
          isPresent
              ? Icons.check
              : Icons.account_box,
          color: Colors.white,
        ),
      ),
    );
  }
}