// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'package:flutter_complete_guide/dummy_data.dart';
import 'package:flutter_complete_guide/turkish_cuisine_theme.dart';

class MealDetailScreen extends StatefulWidget {
  static const routeName = '/meal-detail';
  final Function toggleFavorite;
  final Function isFavorite;
  MealDetailScreen(this.toggleFavorite, this.isFavorite);
  @override
  State<MealDetailScreen> createState() => _MealDetailScreenState();
}

class _MealDetailScreenState extends State<MealDetailScreen>
    with TickerProviderStateMixin {
  Widget buildSectionTitle(String text, BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }

  Widget buildContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 150,
      width: double.infinity,
      child: child,
    );
  }

  @override
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final mealId = routeArgs['id'];
    final affordability = routeArgs['affordability'];
    final complexity = routeArgs['complexity'];
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: FittedBox(
            child: Text(
              selectedMeal.title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: 300,
                    child: ClipRRect(
                      child: Image.network(
                        selectedMeal.imageUrl,
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(120),
                          bottomLeft: Radius.circular(120)),
                    ),
                  ),
                  Positioned(
                      top: -8,
                      right: -12,
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.all(
                            Radius.circular(32),
                          ),
                          onTap: (() => widget.toggleFavorite(mealId)),
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: SizedBox(
                              height: 50,
                              width: 50,
                              child: Icon(
                                widget.isFavorite(mealId)
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                size: 40,
                                color: TurkishCuisineTheme.buildLightTheme()
                                    .primaryColor,
                              ),
                            ),
                          ),
                        ),
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  getTimeBoxUI(
                      Icons.schedule, selectedMeal.duration.toString(), ' min'),
                  getTimeBoxUI(Icons.attach_money, affordability, ''),
                  getTimeBoxUI(Icons.work_outline, complexity, ''),
                ],
              ),
              Container(
                child: TabBar(
                  controller: _tabController,
                  labelColor: Color(0xFF00B6F0),
                  unselectedLabelColor: Color(0xFF3A5160),
                  tabs: [
                    Tab(
                      child: Text(
                        'Ingredients',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Steps',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 300,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    buildContainer(
                      ListView.builder(
                          itemCount: selectedMeal.ingredients.length,
                          itemBuilder: (ctx, index) => Card(
                                color: Colors.white70,
                                elevation: 0.1,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 10),
                                  child: Container(
                                    child: Stack(children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.circle,
                                            size: 12,
                                          ),
                                          SizedBox(width: 10),
                                          Flexible(
                                              child: Text(selectedMeal
                                                  .ingredients[index])),
                                        ],
                                      )
                                    ]),
                                  ),
                                ),
                              )),
                    ),
                    buildContainer(ListView.builder(
                      itemBuilder: (ctx, index) => Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Color(0xFF00B6F0),
                              child: Text(
                                '${(index + 1)}',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            title: Text(
                              selectedMeal.steps[index],
                            ),
                          ),
                          Divider(
                            thickness: 1,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      itemCount: selectedMeal.steps.length,
                    )),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

Widget getTimeBoxUI(IconData ic1, String txt1, String txt2) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Color(0xFF3A5160).withOpacity(0.2),
              offset: Offset(1.1, 1.1),
              blurRadius: 8.0),
        ],
      ),
      child: Padding(
        padding:
            EdgeInsets.only(left: 18.0, right: 18.0, top: 12.0, bottom: 12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              ic1,
              color: Color(0xFF00B6F0),
            ),
            Row(
              children: [
                Text(
                  txt1,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    letterSpacing: 0.27,
                    color: Color(0xFF3A5160),
                  ),
                ),
                Text(
                  txt2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    letterSpacing: 0.27,
                    color: Color(0xFF3A5160),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
/*StreamBuilder<Object>(
                                      stream: null,
                                      builder: (context, snapshot) {
                                        return Text(
                                            selectedMeal.ingredients[index],
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle1);
                                      }),*/