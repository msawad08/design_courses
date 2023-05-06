import 'package:design_course/controller/category_controller.dart';
import 'package:design_course/controller/drawer_controller.dart';
import 'package:design_course/controller/popular_controller.dart';
import 'package:design_course/controller/profile_button_controller.dart';
import 'package:design_course/controller/search_input_controller.dart';
import 'package:design_course/widgets/SelectionView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const Drawer(
        child: DrawerViewController(),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              expandedHeight: 200.0,
              collapsedHeight: kToolbarHeight,
              automaticallyImplyLeading: false,
              floating: false,
              pinned: true,
              actions: <Widget>[
                Container(),
              ],
              backgroundColor: Theme.of(context).backgroundColor,
              surfaceTintColor: Theme.of(context).backgroundColor,
              flexibleSpace: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                return constraints.biggest.height ==
                        MediaQuery.of(context).viewPadding.top + kToolbarHeight
                    ? AppBar(
                        centerTitle: false,
                        automaticallyImplyLeading: false,
                        title: Text(AppLocalizations.of(context)!.title),
                        backgroundColor: Theme.of(context).backgroundColor,
                        surfaceTintColor: Theme.of(context).backgroundColor,
                        foregroundColor:
                            Theme.of(context).colorScheme.onPrimary,
                        actions: const [ProfileButtonController()],
                      )
                    : FlexibleSpaceBar(
                        centerTitle: true,
                        background: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          AppLocalizations.of(context)!.choose_your,
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium,
                                        ),
                                        Text(
                                          AppLocalizations.of(context)!.design_course,
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleLarge,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const ProfileButtonController()
                                ],
                              ),
                              const SizedBox(
                                width: 250,
                                child: SearchInputController(),
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




