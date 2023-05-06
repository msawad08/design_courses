import 'package:design_course/screens/dashboard.dart';
import 'package:design_course/widgets/drawer_view.dart';
import 'package:flutter/material.dart';

import '../widgets/ProfileButton.dart';

class DrawerViewController extends StatelessWidget {
  const DrawerViewController({Key? key}) : super(key: key);

  onTap(BuildContext context){
    final scaffold=  Scaffold.of(context);
    scaffold.isEndDrawerOpen? scaffold.closeEndDrawer(): scaffold.openEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return const DrawerView();
  }
}