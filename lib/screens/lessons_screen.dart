import 'package:flutter/material.dart';
import 'package:language_learning_flutte/screens/class_screen.dart';

class LessonsScreen extends StatelessWidget {
  const LessonsScreen({Key? key}) : super(key: key);

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
          icon: Icon(Icons.notification_add, color: Colors.black),
          onPressed: () {},
        ),
        toolbarHeight: 80.2,
        toolbarOpacity: 0.8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(25),
            bottomLeft: Radius.circular(25),
          ),
        ),
        elevation: 0.00,
        backgroundColor: const Color(0xFFfedbdf),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildLessonColumn(context, "Основы", "Фрукты", "Животные"),
              SizedBox(width: 20),
              _buildLessonColumn(context, "Семья", "Овощи"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLessonColumn(BuildContext context, String lesson1, String lesson2, [String? lesson3]) {
    return Column(
      children: [
        SizedBox(height: 30,),
        _buildLessonContainer(context, lesson1),
        SizedBox(height: 80),
        _buildLessonContainer(context, lesson2),
        if (lesson3 != null) ...[
          SizedBox(height: 80),
          _buildLessonContainer(context, lesson3),
        ],
      ],
    );
  }

  Widget _buildLessonContainer(BuildContext context, String lessonName) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ClassScreen(),
          ),
        );
      },
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Color(0xFF9eb4b2), width: 4),
        ),
        child: Center(
          child: Text(
            lessonName,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontStyle: FontStyle.italic, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
