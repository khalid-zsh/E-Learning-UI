import 'package:get/get.dart';
import '../Helper/models/CourseModel/course_model.dart';
import '../Helper/widgets/custom_list_view.dart';

class CourseController extends GetxController {
  var courses = <Course>[].obs;
  var selectedCourse = Rxn<Course>();

  @override
  void onInit() {
    super.onInit();
    loadCourses();
  }

  void loadCourses() {
    courses.value = [
      Course(
        title: "3D Animation",
        creator: "Eyeshot Khalid",
        video: "assets/videos/video.mp4",
        rating: 4.5,
        duration: "25 Hours",
        price: 30,
        lessons: List.generate(
          25,
              (i) => Lesson(
            title: "Lesson ${i + 1}",
            duration: "10 Min",
            isLocked: i != 0,
          ),
        ),
      ),
      Course(
        title: "Software Development",
        creator: "John Doe",
        video: "assets/videos/video.mp4",
        rating: 4.9,
        duration: "65 Hours",
        price: 80,
        lessons: List.generate(
          65,
              (i) => Lesson(
            title: "Module ${i + 1}",
            duration: "15 Min",
            isLocked: i != 0,
          ),
        ),
      ),
    ];
  }

  void selectCourse(Course course) {
    selectedCourse.value = course;
  }
}