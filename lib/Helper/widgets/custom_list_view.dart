import 'package:flutter/material.dart';
import 'package:e_learning_ui/Utils/colors.dart';

class Lesson {
  final String title;
  final String duration;
  final bool isCompleted;
  final bool isLocked;

  Lesson({
    required this.title,
    required this.duration,
    this.isCompleted = false,
    this.isLocked = true,
  });
}

class CustomListView extends StatelessWidget {
  final List<Lesson> lessons;

  const CustomListView({super.key, required this.lessons});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: lessons.length,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      itemBuilder: (context, index) {
        final lesson = lessons[index];
        return _buildLessonItem(
          lesson.title,
          lesson.duration,
          lesson.isCompleted,
          lesson.isLocked,
        );
      },
    );
  }

  Widget _buildLessonItem(String title, String duration, bool isCompleted, bool isUnlocked) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: CircleAvatar(
          backgroundColor: AppColors.primaryColor.withValues(alpha: .2),
          child: Icon(Icons.play_arrow, color: AppColors.primaryColor),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          duration,
          style: TextStyle(color: Colors.grey.shade500),
        ),
        trailing: isCompleted
            ? const Icon(Icons.check_circle, color: Colors.green)
            : Icon(Icons.lock, color: Colors.amber.shade200),
      ),
    );
  }
}