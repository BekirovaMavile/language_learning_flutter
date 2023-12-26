import 'package:flutter/material.dart';
import 'package:language_learning_flutte/data/models/lesson.dart';
import 'package:language_learning_flutte/data/models/task.dart';
import 'package:language_learning_flutte/data/models/word.dart';
import 'package:language_learning_flutte/screens/happy_screen.dart';
import 'package:language_learning_flutte/ui_kit/_ui_kit.dart';
import 'dart:math';

class TaskScreen extends StatefulWidget {
  final Lesson lesson;

  const TaskScreen({Key? key, required this.lesson}) : super(key: key);

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  int _currentTabIndex = 0;
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final randomWord = widget.lesson.tasks[_currentTabIndex].wordsToLearn[
        Random().nextInt(
            widget.lesson.tasks[_currentTabIndex].wordsToLearn.length)];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${widget.lesson.name} ${_currentTabIndex + 1}/${widget.lesson.tasks.length}",
        ),
        backgroundColor: const Color(0xFFfedbdf),
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 610,
              child: ListView.separated(
                scrollDirection: Axis.vertical,
                padding: const EdgeInsets.only(top: 20),
                itemBuilder: (_, index) {
                  final task = widget.lesson.tasks[_currentTabIndex];
                  final wordIndex = index ~/ 2;
                  final word = task.wordsToLearn[wordIndex];
                  if (index % 2 == 0) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildContainer(index, word),
                      ],
                    );
                  } else {
                    return Container();
                  }
                },
                separatorBuilder: (_, __) {
                  return const SizedBox(height: 10);
                },
                itemCount:
                    widget.lesson.tasks[_currentTabIndex].wordsToLearn.length * 2 - 1,
              ),
            ),
            Text(widget.lesson.tasks[_currentTabIndex].description, style: AppTextStyle.h3Style),
            Text(randomWord.word, style: AppTextStyle.h4StyleLight),
            SizedBox(
              width: 400,
              child: TextField(
                  decoration: const InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF9eb4b2)),
                ),
                icon: Icon(Icons.login, color: Color(0xFF9eb4b2),),
                hintText: "Введите правильный перевод",
              ),
                  controller: _textEditingController),
            ),
            ElevatedButton(
              onPressed: () {
                _handleNextButton();
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xFFfedbdf)),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
              ),
              child: const Text("Проверить ответ"),
            ),
          ],
        ),
      ),
    );
  }

  void _handleNextButton() {
    final currentTask = widget.lesson.tasks[_currentTabIndex];
    final String enteredWord = _textEditingController.text.trim();
    bool isCorrect = false;
    for (Word wordToLearn in currentTask.wordsToLearn) {
      if (enteredWord.toLowerCase() == wordToLearn.translation.toLowerCase()) {
        isCorrect = true;
        break;
      }
    }
    if (isCorrect) {
      if (_currentTabIndex < widget.lesson.tasks.length - 1) {
        setState(() {
          _currentTabIndex++;
        });
        _textEditingController.clear();
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HappyScreen(),
          ),
        );
        // Navigator.pop(context);
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Неверный перевод. Попробуйте ещё раз.'),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }

  Widget _buildContainer(int index, Word word) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(word.image, height: 96, width: 96,),
            Text(word.translation),
          ],
        ),
      );
    // );
  }
}

//
// class TaskScreen extends StatefulWidget {
//   final Lesson lesson;
//
//   const TaskScreen({Key? key, required this.lesson}) : super(key: key);
//
//   @override
//   _TaskScreenState createState() => _TaskScreenState();
// }
//
// class _TaskScreenState extends State<TaskScreen> {
//   int _currentTabIndex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("${widget.lesson.name} ${_currentTabIndex + 1}/${widget.lesson.tasks.length}"),
//       ),
//       body: DefaultTabController(
//         length: widget.lesson.tasks.length,
//         initialIndex: _currentTabIndex,
//         child: Column(
//           children: [
//             Expanded(
//               child: TabBarView(
//                 physics: NeverScrollableScrollPhysics(),
//                 children: widget.lesson.tasks.map((task) {
//                   return _buildTaskCard(task);
//                 }).toList(),
//               ),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 _handleNextButton();
//               },
//               child: Text("Проверить ответ"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildTaskCard(Task task) {
//     final randomWord = task.wordsToLearn[Random().nextInt(task.wordsToLearn.length)];
//
//     return Card(
//       // elevation: 6.0,
//       child: Column(
//         children: [
//           ListTile(
//             title: Text("${task.description}"),
//             subtitle: Text(randomWord.word),
//           ),
//           Row(
//             // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: task.wordsToLearn
//                 .map((word) => _buildWordCard(word))
//                 .toList(),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildWordCard(Word word) {
//     return Container(
//       // margin: EdgeInsets.symmetric(vertical: 8.0),
//       child: Column(
//         children: [
//           Row(
//             children: [
//               Image.asset(AppAsset.splash, height: 150, width: 250,),
//               // Container(height: 100, width: 100, child: Image.asset(AppAsset.onBoard1)),
//             ],
//           ),
//
//           // // Text(word.translation),
//           // Container(height: 100, width: 100, child: Image.asset(AppAsset.onBoard2)),
//           // // Text(word.translation),
//           // Container(height: 100, width: 100, child: Image.asset(AppAsset.onBoard3)),
//           // Text(word.translation),
//         ],
//       ),
//     );
//   }
//

// }
