import 'package:flutter/material.dart';
import '../assets.dart';
import '../responsive.dart';
import 'down_button.dart';


class ContentHeader extends StatelessWidget {
  const ContentHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: ContentHeaderMobile(),
      desktop: ContentHeaderDesktop(),
      tablet: ContentHeaderDesktop(),
      key: UniqueKey()
    );
  }
}
class ContentHeaderMobile extends StatelessWidget {
  const ContentHeaderMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: screenSize.width,
            height: 450.0,
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Assets.strangerThings),
                  fit: BoxFit.cover,
                )
            ),
          ),
          Container(
            height: 450.0,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black, Colors.transparent],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                )
            ),
          ),
          Positioned(
            bottom: 100.0,
            child: Column(
              children:  [
                Row(
                    children: [
                      Image.asset(Assets.netflixLogo0,
                        height: 30,
                      ),
                      const Text(
                        'SERIES',
                        style: TextStyle(fontWeight: FontWeight.w300, color: Colors.white, fontSize: 18, letterSpacing: 5),
                        textAlign: TextAlign.center,
                      ),
                    ]
                ),
                const Text(
                  'STRANGER \n THINGS',
                  style: TextStyle(fontWeight: FontWeight.normal, color: Colors.white, fontSize: 40, fontFamily: 'Benguiat', letterSpacing: -1.7),
                  textAlign: TextAlign.center,
                ),
                Row(
                    children: const [
                      Text(
                        'Ominous',
                        style: TextStyle(fontWeight: FontWeight.w300, color: Colors.white, fontSize: 16, letterSpacing: 2),
                      ),
                      Text(
                        '•',
                        style: TextStyle(fontWeight: FontWeight.w900, color: Colors.red, fontSize: 16, letterSpacing: 20),
                      ),
                      Text(
                        'Exciting',
                        style: TextStyle(fontWeight: FontWeight.w300, color: Colors.white, fontSize: 16, letterSpacing: 2),
                      ),
                      Text(
                        '•',
                        style: TextStyle(fontWeight: FontWeight.w900, color: Colors.red, fontSize: 16, letterSpacing: 20),
                      ),
                      Text(
                        'Teen',
                        style: TextStyle(fontWeight: FontWeight.w300, color: Colors.white, fontSize: 16, letterSpacing: 2),
                      ),
                    ]
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                VerticalIconButton(
                  icon: Icons.add,
                  title: 'List',
                  onTap: () => print('My List'),
                  key: UniqueKey(),
                ),
                _PlayButton(),
                VerticalIconButton(
                  icon: Icons.info_outline,
                  title: 'Info',
                  onTap: () => print('Info'),
                  key: UniqueKey(),
                ),
              ],
            ),
          ),
        ]
    );
  }
}
class ContentHeaderDesktop extends StatelessWidget {
  const ContentHeaderDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            width: screenSize.width,
            height: 450.0,
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Assets.strangerThings),
                  fit: BoxFit.cover,
                )
            ),
          ),
          Container(
            height: 450.0,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black, Colors.transparent],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                )
            ),
          ),
          Positioned(
            top: 100.0,
            left: 35.0,
            child: Row(
                children: [
                  Padding(
                    child: Image.asset(Assets.netflixLogo0,
                      height: 50,
                    ),
                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                  ),
                  const Text(
                    'SERIES',
                    style: TextStyle(fontWeight: FontWeight.w300, color: Colors.white, fontSize: 22, letterSpacing: 5),
                    textAlign: TextAlign.left,
                  ),
                ]
            ),
          ),
          const Positioned(
            top: 160.0,
            left: 35.0,
            child: Text(
              'STRANGER \n THINGS',
              style: TextStyle(fontWeight: FontWeight.normal, color: Colors.white, fontSize: 55, fontFamily: 'Benguiat', letterSpacing: -1.7),
              textAlign: TextAlign.center,
            ),
          ),

          const Positioned(
            top: 300.0,
            left: 35.0,
            child: Text(
              'When a young boy vanishes, a small town uncovers a \n mystery involving secret experiments, terrifying \n supernatural forces and one strange little girl.',
              style: TextStyle(fontWeight: FontWeight.w300, color: Colors.white, fontSize: 18, letterSpacing: 5),
              textAlign: TextAlign.left,

            ),
          ),
          Positioned(
            top: 400.0,
            left: 35.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _PlayButton(),
                Padding(
                  padding: EdgeInsets.fromLTRB(30.0, 5.0, 20.0, 5.0),
                  child: VerticalIconButton(
                    icon: Icons.add,
                    title: 'List',
                    onTap: () => print('My List'),
                    key: UniqueKey(),
                  ),
                )

              ],
            ),
          ),
        ]
    );
  }
}

class _PlayButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () => print('Play'),
      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white), padding: MaterialStateProperty.all<EdgeInsets>(
          const EdgeInsets.fromLTRB(15.0, 5.0, 20.0, 5.0))),
      icon: const Icon(Icons.play_arrow, size: 30.0, color: Colors.black,),
      label: const Text(
        'Play',
        style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            color: Colors.black
        ),
      ),
    );
  }
}
