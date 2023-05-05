import 'package:design_course/controller/category_controller.dart';
import 'package:design_course/widgets/category_view.dart';
import 'package:design_course/widgets/popular_view.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(

        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
                expandedHeight: 200.0,
                collapsedHeight: kToolbarHeight,
                floating: false,
                pinned: true,
                flexibleSpace: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {

                    return constraints.biggest.height == MediaQuery.of(context).viewPadding.top + kToolbarHeight ?
                        AppBar(
                          title: const Text("Design Course"),
                        )
                     :FlexibleSpaceBar(
                        centerTitle: true,

                        // title: const Text("Collapsing Toolbar",
                        //     style: TextStyle(
                        //       color: Colors.white,
                        //       fontSize: 16.0,
                        //     )),
                        background: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children:  [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: const [
                                    Text("Choose Your"),
                                    Text("Design Course"),
                                  ],
                                ),
                                Image.asset("assets/images/profile.jpg", height: 30, )
                              ],
                            ),

                            const TextField(
                              decoration: InputDecoration(
                                hintText: 'Search',
                                prefixIcon: Icon(Icons.search),
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ],
                        ));
                  }
                )),
          ];
        },
        body: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            CategoryController(),
            PopularView(),
          ],
        ),
      ),
    );
  }
}
