import 'package:design_course/controller/category_controller.dart';
import 'package:design_course/controller/popular_controller.dart';
import 'package:design_course/widgets/ProfileButton.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: NestedScrollView(
    //
    //     headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
    //       return <Widget>[
    //         SliverAppBar(
    //             expandedHeight: 200.0,
    //             collapsedHeight: kToolbarHeight,
    //             floating: false,
    //             pinned: true,
    //             flexibleSpace: LayoutBuilder(
    //               builder: (BuildContext context, BoxConstraints constraints) {
    //
    //                 return constraints.biggest.height == MediaQuery.of(context).viewPadding.top + kToolbarHeight ?
    //                     AppBar(
    //                       title: const Text("Design Course"),
    //                     )
    //                  :FlexibleSpaceBar(
    //                     centerTitle: true,
    //
    //                     // title: const Text("Collapsing Toolbar",
    //                     //     style: TextStyle(
    //                     //       color: Colors.white,
    //                     //       fontSize: 16.0,
    //                     //     )),
    //                     background: Column(
    //                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //                       children:  [
    //                         Row(
    //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                           children: [
    //                             Column(
    //                               children: const [
    //                                 Text("Choose Your"),
    //                                 Text("Design Course"),
    //                               ],
    //                             ),
    //                             Image.asset("assets/images/profile.jpg", height: 30, )
    //                           ],
    //                         ),
    //
    //                         const TextField(
    //                           decoration: InputDecoration(
    //                             hintText: 'Search',
    //                             prefixIcon: Icon(Icons.search),
    //                             border: OutlineInputBorder(),
    //                           ),
    //                         ),
    //                       ],
    //                     ));
    //               }
    //             )),
    //       ];
    //     },
    //     body: Column(
    //       mainAxisSize: MainAxisSize.min,
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: const [
    //         CategoryController(),
    //         PopularView(),
    //       ],
    //     ),
    //   ),
    // );

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              expandedHeight: 200.0,
              collapsedHeight: kToolbarHeight,
              floating: false,
              pinned: true,
              backgroundColor: Theme.of(context).backgroundColor,
              flexibleSpace: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                return constraints.biggest.height ==
                        MediaQuery.of(context).viewPadding.top + kToolbarHeight
                    ? AppBar(
                        centerTitle: false,

                        title: const Text("Design Courses"),
                        backgroundColor: Theme.of(context).backgroundColor,
                        surfaceTintColor: null,
                        actions: const [
                          ProfileButton()
                        ],
                      )
                    : FlexibleSpaceBar(
                        centerTitle: true,

                        // title: const Text("Collapsing Toolbar",
                        //     style: TextStyle(
                        //       color: Colors.white,
                        //       fontSize: 16.0,
                        //     )),
                        background: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Choose Your",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium,
                                      ),
                                      Text(
                                        "Design Course",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge,
                                      ),
                                    ],
                                  ),
                                  const ProfileButton()
                                ],
                              ),
                              const SizedBox(
                                width: 250,
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Search',
                                    suffixIcon: Icon(Icons.search),
                                    // border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ));
              })),
          SliverList(
              delegate: SliverChildListDelegate([
            const CategoryController(),
            const PopularController(),
          ]))
        ],
      ),
    );
  }
}

