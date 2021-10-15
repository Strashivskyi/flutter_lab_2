import 'package:flutter/material.dart';
import 'package:lab_2_netflix/data/content.dart';


class ContentList extends StatelessWidget {
  final String title;
  final List<Content> contentList;
  final bool isOriginals;

  const ContentList({
    required Key key,
    required this.title,
    required this.contentList,
    this.isOriginals = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 150.0,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(
                vertical: 12.0,
                horizontal: 10.0,
              ),
              scrollDirection: Axis.horizontal,
              itemCount: contentList.length,
              itemBuilder: (BuildContext context, int index) {
                final Content content = contentList[index];
                return Stack(
                  children:[
                    GestureDetector(
                    onTap: () => print(content.name),
                child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                height: isOriginals ? 150.0 : 150.0,
                width: isOriginals ? 200.0 : 130.0,
                decoration: BoxDecoration(
                image: DecorationImage(
                image: AssetImage(content.imageUrl),
                fit: BoxFit.cover,
                ),
                shape: BoxShape.circle,
                border: Border.all(color: content.color, width: 4.0),
                ),
                ),
                ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: SizedBox(
                        height: 60.0,
                        child: Image.asset(content.titleImageUrl),
                      ),
                    )

                  ]

                );
              },
            ),
          ),
        ],
      ),
    );
  }
}