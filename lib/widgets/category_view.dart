import 'package:design_course/models/course.dart';
import 'package:flutter/material.dart';

class CategoryView extends StatelessWidget {

  final List<String> categories;
  final List<Course> courses;

  const CategoryView({super.key, this.categories = const [], this.courses = const [] });


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Category"),
        SizedBox(
          height: 50,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              padding: const EdgeInsets.all(8.0),

              itemBuilder: (context, int index) {
                return Chip(label: Text(categories[index]));
              }, separatorBuilder: (BuildContext context, int index)  => const SizedBox(width: 10,) ,)
        ),
        SizedBox(
          height: 120,
          child: ListView.separated(
            itemCount: courses.length,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(10.0),
            itemBuilder: (context, index) {
              return Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 100,
                    width: 200,
                    child: Stack(

                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                                  color: Theme.of(context).colorScheme.tertiary,
                              ),
                              width: 180,

                            )
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset("assets/images/img 1.jpg", width: 60,),
                            Expanded(
                              child: Column(
                                children:  [
                                  const Expanded(child: Text("Course Name")),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text("Lessons"),
                                      Text("Rating"),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text("\$25"),
                                        SizedBox(width: 25, height: 25, child: IconButton(onPressed: (){}, icon: const Icon(Icons.add), iconSize: 16, )),
                                      ],
                                    ),
                                  )

                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }, separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 10,),
          ),
        )
      ],
    );
  }
}
