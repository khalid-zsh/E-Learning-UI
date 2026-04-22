import 'package:e_learning_ui/Helper/widgets/custom_app_bar.dart';
import 'package:e_learning_ui/Helper/widgets/custom_button.dart';
import 'package:e_learning_ui/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../Helper/widgets/custom_list_view.dart';

class CourseDetailsView extends StatefulWidget {

  final String title;


  const CourseDetailsView({super.key, required this.title});

  @override
  State<CourseDetailsView> createState() => _CourseDetailsViewState();
}

class _CourseDetailsViewState extends State<CourseDetailsView> {


  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.asset("assets/videos/video.mp4")
      ..initialize().then((_){
        setState(() {
          _controller.play();
        });
      });

  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.sizeOf(context);

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: CustomAppBar(
            context: context,
            title: widget.title
        ),
        body: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  alignment: Alignment.center,
                  height: size.height * .2,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withValues(alpha: .1),
                            blurRadius: 5,
                            spreadRadius: .5
                        )
                      ]
                  ),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * .25,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        // Video
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: _controller.value.isInitialized
                              ? SizedBox.expand(
                            child: FittedBox(
                              fit: BoxFit.cover,
                              child: SizedBox(
                                width: _controller.value.size.width,
                                height: _controller.value.size.height,
                                child: VideoPlayer(_controller),
                              ),
                            ),
                          )
                              : const CircularProgressIndicator(),
                        ),

                        // Play/Pause button
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _controller.value.isPlaying
                                  ? _controller.pause()
                                  : _controller.play();
                            });
                          },
                          child: CircleAvatar(
                            backgroundColor: Colors.black54,
                            child: Icon(
                              _controller.value.isPlaying
                                  ? Icons.pause
                                  : Icons.play_arrow,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
              ),
              SizedBox(height: 12),
              Text(
                  "Career With Artificial Intelligence",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Row(
                children: [
                  Text(
                    "Created By,",
                    style: TextStyle(
                      color: Colors.black.withValues(alpha: .5),
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Eyeshot Khalid",
                    style: TextStyle(
                      color: AppColors.primaryTextColor
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Icon(Icons.star_border, color: Colors.black.withValues(alpha: .5),),
                  SizedBox(width: 5),
                  Text(
                    "4.8",
                    style: TextStyle(
                      color: Colors.black.withValues(alpha: .5),
                    ),
                  ),
                  SizedBox(width: 5),
                  Icon(Icons.access_time_sharp, color: Colors.black.withValues(alpha: .5),),
                  SizedBox(width: 5),
                  Text(
                    "50 Hours",
                    style: TextStyle(
                      color: Colors.black.withValues(alpha: .5),
                    ),
                  ),
                  Spacer(),
                  Text(
                    "\$50",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                      indicator: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.black54,
                      dividerColor: Colors.transparent,
                      tabs: [
                        Tab(text: "Playlist (22)"),
                        Tab(text: "Description"),
                  ]
                  ),
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: TabBarView(
                  children: [
                    SingleChildScrollView(
                      child: CustomListView(
                          lessons: [
                            Lesson(title: "Introduction", duration: "2 Min 18 Sec", isCompleted: true),
                            Lesson(title: "What is Artificial Intelligence?", duration: "18 Min 46 Sec", isLocked: true),
                            Lesson(title: "How to make wireframe", duration: "20 Min 58 Sec", isLocked: true),
                            Lesson(title: "Your first design", duration: "25 Min 10 Sec", isLocked: true),
                          ]
                      ),
                    ),
                    Center(child: Text("Course Description Here")),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
            padding: EdgeInsetsGeometry.fromLTRB(15, 0, 15, 20),
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              children: [
                InkWell(
                  onTap: (){},
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Colors.amber.shade400,
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Icon(Icons.bookmark_border, color: Colors.white,),
                  ),
                ),
                SizedBox(width: 15),
                // Custom Button
                Expanded(
                    child: SizedBox(
                      height: 60,
                      child: CustomButton(
                          title: "Enroll Now",
                          color: AppColors.primaryColor,
                          width: double.infinity
                      ),
                    )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}