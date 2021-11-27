// @dart=2.9
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:genius_park/models/spoken_word.dart';

class SpotTab extends StatefulWidget {
  @override
  _SpotTabState createState() => _SpotTabState();
}

class _SpotTabState extends State<SpotTab> {
  List<SpokenModel> spokenWordList = [
    SpokenModel(
      image: 'images/listener.png',
      name: 'He Who Livee',
      author: 'Karry Wanye',
      authorImage: 'images/slider2.png',
    ),
    SpokenModel(
      image: 'images/listener3.png',
      name: 'The Love Of Hatered',
      author: 'Ola Johns',
      authorImage: 'images/slider3.png',
    ),
    SpokenModel(
      image: 'images/listerner2.png',
      name: 'Death And Choices',
      author: "Alabi Paul",
      authorImage: 'images/slider1.png',
    ),
    SpokenModel(
      image: 'images/listener.png',
      name: 'The Left Hand',
      author: "E. Abraham",
      authorImage: 'images/slider1.png',
    ),
    SpokenModel(
      image: 'images/listener3.png',
      name: 'Bank On It',
      author: "Peter Yun",
      authorImage: 'images/slider1.png',
    ),
  ];

  int scrollIndex = 0;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: 300,
      width: width * .9,
      child: Column(
        children: [
          Expanded(
            child: DefaultTabController(
              length: 3,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    color: Colors.white,
                    constraints: BoxConstraints.expand(height: 50),
                    child: TabBar(
                        indicatorColor: Colors.red,
                        indicator:
                            CircleTabIndicator(color: Colors.red, radius: 3),
                        labelColor: Colors.grey,
                        tabs: const [
                          Tab(text: "Spoken words"),
                          Tab(text: "Motivation"),
                          Tab(text: "Videos"),
                        ]),
                  ),
                  Expanded(
                    child: TabBarView(children: [
                      Container(
                        child: CarouselSlider.builder(
                          itemCount: spokenWordList.length,
                          options: CarouselOptions(
                            enableInfiniteScroll: false,
                            height: 230,
                            reverse: true,
                            viewportFraction: .6,
                            enlargeCenterPage: true,
                            enlargeStrategy: CenterPageEnlargeStrategy.height,
                            onPageChanged: (index, reasom) =>
                                setState(() => scrollIndex = index),
                          ),
                          itemBuilder: (_, i, o) {
                            final centerImage = spokenWordList[i].image;
                            return Container(
                              width: 220,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage(centerImage),
                                  fit: BoxFit.cover,
                                ),
                                color: Colors.red,
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Center(
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: const ImageIcon(
                                        AssetImage('images/play.png'),
                                        color: Colors.white,
                                        size: 60,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    child: Container(
                                      padding: EdgeInsets.all(5),
                                      height: 70,
                                      width: 220,
                                      decoration: const BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(20),
                                          bottomLeft: Radius.circular(20),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Container(
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  spokenWordList[i].authorImage,
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 10,
                                              vertical: 10,
                                            ),
                                            width: 120,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  spokenWordList[i].name,
                                                  style: const TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14,
                                                  ),
                                                  maxLines: 1,
                                                  textAlign: TextAlign.center,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                const SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  spokenWordList[i].author,
                                                  style: const TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Stack(
                                            children: [
                                              Center(
                                                child: IconButton(
                                                  onPressed: () {},
                                                  icon: const ImageIcon(
                                                    AssetImage(
                                                        'images/red_play.png'),
                                                    size: 60,
                                                    color: Colors.red,
                                                  ),
                                                ),
                                              ),
                                              Center(
                                                child: IconButton(
                                                  onPressed: () {},
                                                  icon: const ImageIcon(
                                                    AssetImage(
                                                        'images/dot_play.png'),
                                                    size: 60,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        child: Center(child: Text("Motivatiion videos will be here")),
                      ),
                      Center(
                        child: Container(
                          child: Text("Same goes for here"),
                        ),
                      ),
                    ]),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final BoxPainter _painter;
  // Color color = Colors.red;
  // double radius = 3;
  CircleTabIndicator({Color color, double radius})
      : _painter = _CirclePainter(color, radius);

  @override
  BoxPainter createBoxPainter([onChanged]) => _painter;
}

class _CirclePainter extends BoxPainter {
  final Paint _paint;
  final double radius;

  _CirclePainter(Color color, this.radius)
      : _paint = Paint()
          ..color = color
          ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final Offset circleOffset =
        offset + Offset(cfg.size.width / 2, cfg.size.height - radius - 5);
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}
