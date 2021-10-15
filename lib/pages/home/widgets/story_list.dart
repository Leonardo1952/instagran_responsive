import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import 'story_circle.dart';

class StoriesList extends StatelessWidget {
  const StoriesList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mobile = ResponsiveWrapper.of(context).isMobile;
    return Container(
      height: 110,
      margin: EdgeInsets.symmetric(vertical: mobile ? 15 : 35),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        separatorBuilder: (_, __) => const SizedBox(width: 16),
        itemCount: 16,
        itemBuilder: (_, i) => const StoryCircle(),
      ),
    );
  }
}
