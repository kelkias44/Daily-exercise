import 'package:fina/Widgets/ButtomNavBar.dart';
import 'package:fina/Screens/DetailsScreen.dart';
import 'package:fina/Widgets/SearchBar.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

void main() { 
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily exercise app',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor), 
      ),
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: ButtomNavBar(),
      body: Stack(
        children:<Widget>[
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: Color(0XFFF5CEB8),
              image: DecorationImage(
                image: AssetImage("assets/images/undraw_p.png"),
                )
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        color: Color(0XFFF2BEA1),
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset("assets/images/---.png"),
                    ),
                  ),
                  Text("Welcome to \nDaily Exercise app",
                  // style: Theme.of(context).textTheme.display1.copyWith(fontWeight: FontWeight.w900),
                  ),
                  SearchBar(),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      children: <Widget>[
                        CategoryCard(
                          title: "Diet Recommendation",
                          imageSrc: "assets/image/Hamburger.png",
                        ),
                        CategoryCard(
                          title: "Kegel Exercise",
                          imageSrc: "assets/image/",
                        ),
                        CategoryCard(
                          title: "Meditiation",
                          imageSrc: "assets/image/Meditation.png",
                        ),
                        CategoryCard(
                          title: "Yoga",
                          imageSrc: "assets/image/yoga.png",
                        ),
                      ],
                      )
                      )
                ],
                ),
            ),
          )
        ]
      ),
      
    );
  }
}





class CategoryCard extends StatelessWidget{
  final imageSrc;
  final title;
  
  
  const CategoryCard({
    this.imageSrc, this.title, 
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
          boxShadow: [
            BoxShadow(
            offset: Offset(0, 17),
            blurRadius: 17,
            spreadRadius: -23,
            color: kShadowColor,
          ),]
        ),
        child: Material(
          child: InkWell(
            onTap: (){},
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Spacer(),
                  Image.asset(imageSrc),
                  Spacer(),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    // style: Theme.of(context).textTheme.title.copyWith(fontSize: 15),
                  )
                  
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
