import 'package:flutter/material.dart';

class ProfileButton extends StatelessWidget {

  final dynamic onTap;
  const ProfileButton({
    super.key, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        // style:  ButtonStyle(
        //
        //   // shape: MaterialStatePropertyAll<OutlinedBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))
        // ),
        onPressed: () => onTap(context),
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          clipBehavior: Clip.antiAlias,
          child: Image.asset("assets/images/profile.jpg",
              height: 30),
        ));
  }
}
