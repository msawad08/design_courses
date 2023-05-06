import 'package:flutter/material.dart';

import '../widgets/ProfileButton.dart';

class ProfileButtonController extends StatelessWidget {
  const ProfileButtonController({Key? key}) : super(key: key);

  onTap(BuildContext context){
    final scaffold=  Scaffold.of(context);
    scaffold.isEndDrawerOpen? scaffold.closeEndDrawer(): scaffold.openEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return ProfileButton(onTap: onTap);
  }
}