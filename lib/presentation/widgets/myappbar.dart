import 'package:flutter/material.dart';
import 'package:restoocom/core/constants/colors.dart';
import 'package:restoocom/routes/heightwidth.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {Key? key,
      required this.title,
      this.subtitle,
      this.leading,
      this.actions})
      : super(key: key);

  final Widget? title;
  final String? subtitle;
  final Widget? leading;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading,
      title: title,
      automaticallyImplyLeading: false,
      shadowColor: Colors.black,
      elevation: 3.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
      ),
      toolbarHeight: height * 0.12,
      backgroundColor: AppColors.background,
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(height * 0.12); // Height of the AppBar
}
