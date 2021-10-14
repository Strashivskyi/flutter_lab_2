import 'package:flutter/material.dart';
import '../assets.dart';
import '../responsive.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 24.0,
      ),
      color: Colors.black,
      child: Responsive(
        mobile: const _CustomAppBarMobile(),
        desktop: _CustomAppBarDesktop(),
        key: UniqueKey(), 
        tablet: _CustomAppBarDesktop(),
      )
    );
  }
}
class _CustomAppBarMobile extends StatelessWidget {
  const _CustomAppBarMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Image.asset(Assets.netflixLogo0),
          const SizedBox(width: 12.0),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _AppBarButton(title: 'TV shows', onTap: () => print('TV shows'), key: UniqueKey()),
                _AppBarButton(title: 'Movies', onTap: () => print('Movies'), key: UniqueKey()),
                _AppBarButton(title: 'My list', onTap: () => print('My list'), key: UniqueKey())
              ],
            ),
          )

        ],
      ),
    );
  }
}
class _CustomAppBarDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Image.asset(Assets.netflixLogo1),
          const SizedBox(width: 20.0),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _AppBarButton(
                  title: 'Home',
                  onTap: () => print('Home'),
                  key: UniqueKey(),
                ),
                _AppBarButton(
                  title: 'TV Shows',
                  onTap: () => print('TV Shows'),
                  key: UniqueKey(),

                ),
                _AppBarButton(
                  title: 'Movies',
                  onTap: () => print('Movies'),
                  key: UniqueKey(),

                ),
                _AppBarButton(
                  title: 'Latest',
                  onTap: () => print('Latest'),
                  key: UniqueKey(),

                ),
                _AppBarButton(
                  title: 'My List',
                  onTap: () => print('My List'),
                  key: UniqueKey(),

                ),
              ],
            ),
          ),
          const Spacer(),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  padding: EdgeInsets.zero,
                  icon: Icon(Icons.search),
                  iconSize: 28.0,
                  color: Colors.white,
                  onPressed: () => print('Search'),
                ),
                _AppBarButton(
                  title: 'KIDS',
                  onTap: () => print('KIDS'),
                  key: UniqueKey(),

                ),
                _AppBarButton(
                  title: 'DVD',
                  onTap: () => print('DVD'),
                  key: UniqueKey(),

                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  icon: Icon(Icons.card_giftcard),
                  iconSize: 28.0,
                  color: Colors.white,
                  onPressed: () => print('Gift'),
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  icon: Icon(Icons.notifications),
                  iconSize: 28.0,
                  color: Colors.white,
                  onPressed: () => print('Notifications'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class _AppBarButton extends StatelessWidget {
  final String title;
  final Function onTap;

  const _AppBarButton({
    required Key key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap(),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }


}

