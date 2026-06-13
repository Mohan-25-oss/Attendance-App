import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/attendance_provider.dart';
import '../widgets/student_title.dart';
import 'summary_screen.dart';

class AttendanceScreen extends StatelessWidget {
  const AttendanceScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final provider = Provider.of<AttendanceProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title:Text('Student Attendance'),
        centerTitle: true,
      ),

      body: ListView.builder(
        itemCount: provider.students.length,
        itemBuilder: (context, index) {

          final student = provider.students[index];

          return StudentTile(
            name: student.name,
            isPresent: student.isPresent,
            onChanged: (value) {
              provider.toggleAttendance(
                index,
                value ?? false,
              );
            },
          );
        },
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: SizedBox(
          width: double.infinity,
          height: 55,
          child: ElevatedButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const SummaryScreen(),
                ),
              );
            },
            icon: const Icon(Icons.check),
            label: const Text("Submit"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}