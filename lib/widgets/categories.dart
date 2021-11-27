import 'package:flutter/material.dart';
import 'package:genius_park/models/category_model.dart';

List<CategoryModel> categoriesList = [
  CategoryModel(image: 'images/podcast1.png', name: 'Podcast'),
  CategoryModel(image: 'images/quotation1.png', name: 'Qoutes'),
  CategoryModel(image: 'images/spotlights1.png', name: 'SPOT-Me'),
  CategoryModel(image: 'images/speaker1.png', name: 'Affirmation'),
  CategoryModel(image: 'images/machine-learning1.png', name: 'SPOT-On'),
];

class Categories extends StatefulWidget {
  Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: 100,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: categoriesList.length,
            itemBuilder: (_, i) {
              return GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                         
                          ),
                      child: Padding(
                          padding: EdgeInsets.all(4),

                          // Positioned.fill(
                          //   child: Align(
                          //     alignment: Alignment.center,
                          //     child: Loading(),
                          //   ),
                          // ),
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(
                                  categoriesList[i].image,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          )),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      categoriesList[i].name,
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                      ),
                    )
                  ]),
                ),
              );
            }));
  }
}
