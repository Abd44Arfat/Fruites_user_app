import 'package:flutter/material.dart';
import 'package:user_fruit_app/core/widgets/notification_widget.dart';

import '../utils/app_text_styles.dart';

AppBar buildAppBar() {
  return AppBar(
    centerTitle: true,
    actions: const [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: NotificationWidget(),
      ),
    ],
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: const Text(
      'الأكثر مبيعًا',
      textAlign: TextAlign.center,
      style: TextStyles.bold19,
    ),
  );
}
