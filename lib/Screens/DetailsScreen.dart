import 'package:fina/Widgets/ButtomNavBar.dart';
import 'package:fina/Widgets/SearchBar.dart';
import 'package:fina/constants.dart';
import 'package:flutter/material.dart';


class DetailsScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: ButtomNavBar(),
      body: Stack(
        children: <Widget>[
          Container(
            height : size.height * 45,
            decoration: BoxDecoration(
              color: kBlueLightColor,
              image: DecorationImage(
                image: AssetImage("assetName"),
                fit: BoxFit.fitWidth,
                )
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Text(
                      "Meditatoin",
                      // style: Theme.of(context).
                      // textTheme.display1.copyWith(fontWeight: FontWeight.w900),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        "3-10 min course",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                       SizedBox(height: 10,),
                      SizedBox(
                        width: size.width*.6,
                        child: Text(
                          "Workout -> live happier and healthier"
                        ),
                      ),
                      SizedBox(
                        width: size.width * .5,
                        child: SearchBar()
                        ),
                        Wrap(
                          spacing: 20,
                          runSpacing: 20,
                          children: <Widget>[
                            
                            SeassionCard(
                              seassionNum: 1,
                              isDone: true,
                            ),
                            SeassionCard(
                              seassionNum: 2,
                            ),
                            SeassionCard(
                              seassionNum: 3,
                              isDone: true,
                            ),
                            SeassionCard(
                              seassionNum: 4,
                            ),SeassionCard(
                              seassionNum: 5,
                              isDone: true,
                            ),
                            SeassionCard(
                              seassionNum: 6,
                            )
                          ],
                        ),
                        SizedBox(height: 20,),
                        Text(
                          "",
                          // style: Theme.of(context).textTheme.title.copyWith(fontWeight: FontWeight),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 20),
                          padding: EdgeInsets.all(10),
                          height: 90,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(13),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 17),
                                blurRadius: 23,
                                spreadRadius: -13,
                                color: kShadowColor,
                              ),
                            ],
                          ),
                          child: Row(
                            children: <Widget>[
                              Image.asset(""),
                              SizedBox(width: 20),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "data",
                                      // style: Theme.of(context).textTheme.subtitle,
                                      ),
                                      Text("Start next step practice")
                                  ],
                                )
                                ),
                                Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Icon(
                                    Icons.lock,
                                  ),
                                  )
                            ],
                            ),
                        ),
                  ],
                ),
              ),
              )
            )

        ],
      ),
      
    );
  }
}

class SeassionCard extends StatelessWidget {
  final seassionNum;
  final bool isDone;

  const SeassionCard({
    Key? key,
    this.seassionNum, this.isDone=false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(13),
          child: Container(
            width: constraint.maxWidth/2-10,
            // padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(13),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 17),
                  blurRadius: 23,
                  spreadRadius: -13,
                  color: kShadowColor,
                )
              ]
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: (){},
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 42,
                        width: 43,
                        decoration: BoxDecoration(
                          color:isDone ? kBlueLightColor : Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(color: kBlueLightColor),
                        ),
                        child: Icon(
                          Icons.play_arrow,
                          color: isDone ? Colors.white : kBlueLightColor,
                          ),
                      ),
                      SizedBox(width: 10,),
                      Text(
                        "Session $seassionNum",
                        // style: Theme.of(context).textTheme.subtitle,
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }
    );
  }
}

