import '../../widgets/custom_list_view.dart';

class Course {
  final String title;
  final String creator;
  final String video;
  final double rating;
  final String duration;
  final double price;
  final List<Lesson> lessons;

  Course({
    required this.title,
    required this.creator,
    required this.video,
    required this.rating,
    required this.duration,
    required this.price,
    required this.lessons,
  });
}