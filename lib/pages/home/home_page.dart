import 'package:flutter/material.dart';

import 'widgets/post_widget.dart';
import 'widgets/responsive_app_bar.dart';
import 'widgets/right_panel.dart';
import 'widgets/story_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        child: ResponsiveAppBar(),
        preferredSize: Size(double.infinity, 52),
      ),
      backgroundColor: Colors.black87,
      body: Align(
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1000),
          child: Row(
            children: [
              Expanded(
                child: ListView(
                  children: const [
                    StoriesList(),
                    PostWidget(),
                    PostWidget(),
                    PostWidget(),
                  ],
                ),
              ),
              const RightPanel()
            ],
          ),
        ),
      ),
    );
  }
}
