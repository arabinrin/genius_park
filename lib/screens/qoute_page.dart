import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:genius_park/models/onboard.dart';
import 'package:genius_park/models/qoutes.dart';
import 'package:genius_park/screens/start_page.dart';
import 'package:genius_park/utils/constant.dart';
import 'package:genius_park/utils/data.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:group_button/group_button.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QoutePage extends StatefulWidget {
  const QoutePage({Key? key}) : super(key: key);

  @override
  _QoutePageState createState() => _QoutePageState();
}

class _QoutePageState extends State<QoutePage> {
  int currentImdex = 0;
  PageController? _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          itemCount: qouteModels.length,
          onPageChanged: (int i) {
            currentImdex = i;
          },
          itemBuilder: (_, i) {
            return OnQoutes(
              qouteModel: qouteModels[i],
              current: currentImdex,
            );
          }),
    );
  }
}

class OnQoutes extends StatelessWidget {
  QouteModel qouteModel;
  int current;
  OnQoutes({
    required this.qouteModel,
    required this.current,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: height,
            decoration: BoxDecoration(
              color: kred.withOpacity(.2),
              image: DecorationImage(
                image: AssetImage(qouteModel.image),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Container(
                  height: height,
                  color: Colors.black.withOpacity(.2),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_back,
                                    color: kwhite,
                                    size: 25,
                                  )),
                              Text(
                                'Qoutes',
                                style: GoogleFonts.merriweather(
                                  textStyle: TextStyle(
                                    fontSize: 20,
                                    color: kwhite,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                width: 150,
                                child: Row(
                                     
                                  children: [
                                    Center(
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: const ImageIcon(
                                          AssetImage('images/messageIcon.png'),
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: const ImageIcon(
                                          AssetImage('images/downloadIcon.png'),
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: const ImageIcon(
                                          AssetImage('images/shareIcon.png'),
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ]),
                      ),
                      Container(
                        width: width*.8,
                        height: height*.6,
                        child: Align(
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 16.0, vertical: 8.0),
                                child: Text(
                                  qouteModel.title,
                                  style: GoogleFonts.merriweather(
                                    textStyle: const TextStyle(
                                        fontSize: 35,
                                        color: Colors.white,
                                        letterSpacing: 1.5,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  
                                  maxLines: 5,
                                ),
                              ),
                              SizedBox(height: 100,),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  '- Anonymous',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 200,
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(.2),
                                    offset: Offset(2, 2),
                                    blurRadius: 5,
                                  ),
                                ],
                                shape: BoxShape.circle,
                                color: Colors.white.withOpacity(.8),
                              ),
                              child:  IconButton(
                                        onPressed: () {},
                                        icon: const ImageIcon(
                                          AssetImage('images/qouteComment.png'),
                                          color: Colors.black,
                                          size: 20,
                                        ),
                                      ), 
                            ),
                            const SizedBox(
                              width: 40,
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(.2),
                                    offset: Offset(2, 2),
                                    blurRadius: 5,
                                  ),
                                ],
                                shape: BoxShape.circle,
                                color: Colors.white.withOpacity(.8),
                              ),
                              child: Icon(
                                Icons.favorite,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      height: 10,
      width: current == index ? 20 : 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: kred,
      ),
    );
  }
}
