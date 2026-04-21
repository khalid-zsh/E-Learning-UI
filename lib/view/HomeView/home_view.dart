import 'package:flutter/material.dart';
import '../../Utils/colors.dart';
import 'CustomCatagory/custom_catagory.dart';
import 'HomeAppBar/home_app_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.sizeOf(context);

    List<Map> categories = [
      {
        'icon': 'assets/gridView/3d.json',
        'title': '3D Animation',
        'courses' : '15',
      },
      {
        'icon': 'assets/gridView/ai.json',
        'title': 'Artificial Intelligence',
        'courses' : '10',
      },
      {
        'icon': 'assets/gridView/animation.json',
        'title': 'Animation Design',
        'courses' : '30',
      },
      {
        'icon': 'assets/gridView/database.json',
        'title': 'Database Management',
        'courses' : '25',
      },
      {
        'icon': 'assets/gridView/marketing.json',
        'title': 'Marketing',
        'courses' : '20',
      },
      {
        'icon': 'assets/gridView/network.json',
        'title': 'Networking ',
        'courses' : '10',
      },
      {
        'icon': 'assets/gridView/software.json',
        'title': 'Software Development',
        'courses' : '50',
      },
      {
        'icon': 'assets/gridView/web.json',
        'title': 'Web Development',
        'courses' : '45',
      },
      {
        'icon': 'assets/gridView/3d.json',
        'title': '3D Animation',
        'courses' : '35',
      },
      {
        'icon': 'assets/gridView/ai.json',
        'title': 'Artificial Intelligence',
        'courses' : '60',
      },
    ];

    return Scaffold(
      body: Column(
        children: [
          // Header
          homeAppBar(size),
          // Main Body
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Explore Categories",
                          style: TextStyle(
                            color: AppColors.primaryTextColor,
                            fontSize: 27,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextButton(
                            onPressed: (){},
                            child: Text(
                              "See All",
                              style: TextStyle(
                                color: AppColors.primaryColor,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                        )
                      ],
                    ),
                    GridView.builder(
                      shrinkWrap: true,
                        itemCount: categories.length,
                        primary: false,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 15,
                          mainAxisSpacing: 15,
                          childAspectRatio: .9,
                        ),
                        itemBuilder: (context, index) {
                        final data = categories[index];
                        // grid view design
                        return CustomCategory(icon: data['icon'], title: data['title'], courses: data['courses'],);
                        },
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }


}
