import 'package:flutter/material.dart';
import 'package:lab_2_netflix/data/data.dart';
import 'package:lab_2_netflix/elements/content_header.dart';
import 'package:lab_2_netflix/elements/content_list.dart';
import 'package:lab_2_netflix/elements/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 50.0),
        child: const CustomAppBar(),
      ),
      body: Column(
          children:  const [
        ContentHeader(),
        Padding(
          padding: EdgeInsets.only(bottom: 5.0),
          child: ContentList(
            key: PageStorageKey('previews'),
            title: 'Previews',
            contentList: previews,
          ),
        )
        ]
    ),
    );
  }


}

