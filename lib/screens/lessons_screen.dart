import 'package:flutter/material.dart';
import 'package:language_learning_flutte/data/app_data.dart';
import 'package:language_learning_flutte/data/models/lesson.dart';
import 'package:language_learning_flutte/screens/task_screen.dart';

class LessonsScreen extends StatefulWidget {
  const LessonsScreen({Key? key}) : super(key: key);

  @override
  State<LessonsScreen> createState() => _LessonsScreenState();
}

class _LessonsScreenState extends State<LessonsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.centerRight,
          child: Text(
            "Хош кельдиныз",
            style: TextStyle(color: Colors.black),
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.notification_add, color: Colors.black),
          onPressed: () {},
        ),
        toolbarHeight: 80.2,
        backgroundColor: const Color(0xFFfedbdf),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: SingleChildScrollView(
          child: ListView.builder(
            itemCount: AppData.lessonItems.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  _buildLessonContainer(context, AppData.lessonItems[index]),
                  const SizedBox(height: 30),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildLessonContainer(BuildContext context, Lesson lesson) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TaskScreen(lesson: lesson),
          ),
        );
      },
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: const Color(0xFF9eb4b2), width: 4),
        ),
        child: Center(
          child: Text(
            lesson.name,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.black, fontStyle: FontStyle.italic, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
