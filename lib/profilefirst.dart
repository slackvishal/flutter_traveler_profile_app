import 'package:flutter_traveler_profile_app/SizeConfig.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'HomeScreen App',
              home: ProfileFirst(),
            );
          },
        );
      },
    );
  }
}

class ProfileFirst extends StatefulWidget {
  ProfileFirst({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ProfileFirstState createState() => _ProfileFirstState();
}

class _ProfileFirstState extends State<ProfileFirst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8FA),
      body: Stack(
        overflow: Overflow.visible,
        children: <Widget>[

          Container(
            color: Colors.blue[600],
            height: 40 * SizeConfig.heightMultiplier,
            child: Padding(
              padding:  EdgeInsets.only(left: 30.0, right: 30.0, top: 10 * SizeConfig.heightMultiplier),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        height: 11 * SizeConfig.heightMultiplier,
                        width: 22 * SizeConfig.widthMultiplier,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/profileimg.png"))
                        ),
                      ),
                      SizedBox(width: 5 * SizeConfig.widthMultiplier,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Neil Sullivan Paul", style: TextStyle(
                            color: Colors.white,
                            fontSize: 3 * SizeConfig.textMultiplier,
                            fontWeight: FontWeight.bold
                          ),),
                          SizedBox(height: 1 * SizeConfig.heightMultiplier,),
                          Row(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Image.asset(
                                      "assets/fb.png",
                                  height: 3 * SizeConfig.heightMultiplier,
                                    width: 3 * SizeConfig.widthMultiplier,
                                  ),
                                  SizedBox(width: 2 * SizeConfig.widthMultiplier,),
                                  Text("Protorix", style: TextStyle(
                                      color: Colors.white60,
                                      fontSize: 1.5 * SizeConfig.textMultiplier,
                                  ),),
                                ],
                              ),
                              SizedBox(width: 7 * SizeConfig.widthMultiplier,),
                              Row(
                                children: <Widget>[
                                  Image.asset(
                                    "assets/insta.png",
                                    height: 3 * SizeConfig.heightMultiplier,
                                    width: 3 * SizeConfig.widthMultiplier,
                                  ),
                                  SizedBox(width: 2 * SizeConfig.widthMultiplier,),
                                  Text("Protorix", style: TextStyle(
                                    color: Colors.white60,
                                    fontSize: 1.5 * SizeConfig.textMultiplier,
                                  ),),
                                ],
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 3 * SizeConfig.heightMultiplier,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text("10.2K", style: TextStyle(
                            color: Colors.white,
                            fontSize: 3 * SizeConfig.textMultiplier,
                            fontWeight: FontWeight.bold
                          ),),
                          Text("Protorix", style: TextStyle(
                            color: Colors.white70,
                            fontSize: 1.9 * SizeConfig.textMultiplier,
                          ),),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text("543", style: TextStyle(
                              color: Colors.white,
                              fontSize: 3 * SizeConfig.textMultiplier,
                              fontWeight: FontWeight.bold
                          ),),
                          Text("Following", style: TextStyle(
                            color: Colors.white70,
                            fontSize: 1.9 * SizeConfig.textMultiplier,
                          ),),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white60),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("EDIT PROFILE", style: TextStyle(
                            color: Colors.white60,
                            fontSize: 1.8 * SizeConfig.textMultiplier
                          ),),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding:  EdgeInsets.only(top: 35 * SizeConfig.heightMultiplier),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30.0),
                  topLeft: Radius.circular(30.0),
                )
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding:  EdgeInsets.only(left: 30.0, top: 3 * SizeConfig.heightMultiplier),
                      child: Text("My Albums", style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 2.2 * SizeConfig.textMultiplier
                      ),),
                    ),
                    SizedBox(height: 3 * SizeConfig.heightMultiplier,),
                    Container(
                      height: 37 * SizeConfig.heightMultiplier,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          _myAlbumCard("assets/travelfive.png", "assets/traveltwo.png", "assets/travelsix.png", "assets/travelthree.png", "+178", "Best Trip"),
                          _myAlbumCard("assets/travelsix.png", "assets/travelthree.png", "assets/travelfour.png", "assets/travelfive.png", "+18", "Hill Lake Tourism"),
                          _myAlbumCard("assets/travelfive.png", "assets/travelsix.png", "assets/traveltwo.png", "assets/travelone.png", "+1288", "The Grand Canyon"),
                          SizedBox(width: 10 * SizeConfig.widthMultiplier,),
                        ],
                      ),
                    ),
                    SizedBox(height: 3 * SizeConfig.heightMultiplier,),
                    Padding(
                      padding:  EdgeInsets.only(left: 30.0, right: 30.0),
                      child: Row(
                        children: <Widget>[
                          Text("Favourite places", style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 2.2 * SizeConfig.textMultiplier
                          ),),
                          Spacer(),
                          Text("View All", style: TextStyle(
                              color: Colors.grey,
                              fontSize: 1.7 * SizeConfig.textMultiplier
                          ),),
                        ],
                      ),
                    ),
                    SizedBox(height: 3 * SizeConfig.heightMultiplier,),
                    Container(
                      height: 20 * SizeConfig.heightMultiplier,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          _favoriteCard("assets/travelfive.png"),
                          _favoriteCard("assets/travelthree.png"),
                          _favoriteCard("assets/travelfive.png"),
                          SizedBox(width: 10 * SizeConfig.widthMultiplier,)
                        ],
                      ),
                    ),
                    SizedBox(height: 3 * SizeConfig.heightMultiplier,)
                  ],
                ),
              ),
            ),
          )

        ],
      ),

    );
  }

  _myAlbumCard(String asset1, String asset2, String asset3, String asset4, String more, String name) {
    return Padding(
      padding: const EdgeInsets.only(left: 40.0),
      child: Container(
        height: 37 * SizeConfig.heightMultiplier,
        width: 60 * SizeConfig.widthMultiplier,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(color: Colors.grey, width: 0.2)
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(asset1, height: 27 * SizeConfig.imageSizeMultiplier, width: 27 * SizeConfig.imageSizeMultiplier, fit: BoxFit.cover,),
                  ),
                  Spacer(),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(asset2, height: 27 * SizeConfig.imageSizeMultiplier, width: 27 * SizeConfig.imageSizeMultiplier, fit: BoxFit.cover,),
                  ),
                ],
              ),
              SizedBox(height: 1 * SizeConfig.heightMultiplier,),
              Row(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(asset3, height: 27 * SizeConfig.imageSizeMultiplier, width: 27 * SizeConfig.imageSizeMultiplier, fit: BoxFit.cover,),
                  ),
                  Spacer(),
                  Stack(
                    overflow: Overflow.visible,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(asset4, height: 27 * SizeConfig.imageSizeMultiplier, width: 27 * SizeConfig.imageSizeMultiplier, fit: BoxFit.cover,),
                      ),
                      Positioned(
                        child: Container(
                          height: 27 * SizeConfig.imageSizeMultiplier,
                          width: 27 * SizeConfig.imageSizeMultiplier,
                          decoration: BoxDecoration(
                              color: Colors.black38,
                              borderRadius: BorderRadius.circular(10.0)
                          ),
                          child: Center(
                            child: Text(more, style: TextStyle(
                              color: Colors.white,
                              fontSize: 2.5 * SizeConfig.textMultiplier,
                            ),),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Padding(
                padding:  EdgeInsets.only(left: 10.0, top: 2 * SizeConfig.heightMultiplier),
                child: Text(name, style: TextStyle(
                    color: Colors.black,
                    fontSize: 2 * SizeConfig.textMultiplier,
                    fontWeight: FontWeight.bold
                ),),
              )
            ],
          ),
        ),
      ),
    );
  }

  _favoriteCard(String s) {
    return Padding(
      padding: const EdgeInsets.only(left: 40.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Image.asset(s, height: 20 * SizeConfig.heightMultiplier, width: 70 * SizeConfig.widthMultiplier, fit: BoxFit.cover,),
      ),
    );
  }
}
