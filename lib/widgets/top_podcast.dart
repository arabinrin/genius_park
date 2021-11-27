import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:genius_park/models/top_podcast.dart';

class TopPodcast extends StatelessWidget {
  List<TopPodcastModel> topPodcast = [
    TopPodcastModel(true,
        image: 'images/qoute2.png',
        title: 'Stay Right and Stay true',
        author: 'StephREDD',
        time: 15),
    TopPodcastModel(true,
        image: 'images/qoute3.png',
        title: 'Stay Right and Stay true',
        author: 'StephREDD',
        time: 15),
    TopPodcastModel(true,
        image: 'images/qoute4.png',
        title: 'Stay Right and Stay true',
        author: 'StephREDD',
        time: 15),
    TopPodcastModel(true,
        image: 'images/qoute5.png',
        title: 'Stay Right and Stay true',
        author: 'StephREDD',
        time: 15),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        height: 400,
        child: StaggeredGridView.countBuilder(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 12,
            itemCount: topPodcast.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                  image: DecorationImage(
                    image: AssetImage(
                      topPodcast[index].image,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Colors.black.withOpacity(.5),
                            Colors.black.withOpacity(.4),
                            Colors.black.withOpacity(.2),
                            Colors.black.withOpacity(.1),
                            Colors.black.withOpacity(.1),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        top: 10,
                        left: 10,
                        child: Row(
                          children: [
                            Image.asset(
                              'images/time - icon.png',
                              width: 20,
                              height: 20,
                            ),
                            Text(
                              ' ${topPodcast[index].time} min',
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        )),
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'images/play.png',
                        width: 25,
                        height: 25,
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 15,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            topPodcast[index].title,
                            style: const TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.normal),
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            topPodcast[index].author,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
            staggeredTileBuilder: (index) {
              return StaggeredTile.count(1, index.isEven ? 1.1 : 1.3);
            }),
      ),
    );
  }
}
