import 'package:flutter/material.dart';
import 'package:profile_design/animation.dart';


void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
);

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            CustomScrollView(
              slivers: [
                SliverAppBar(
                  expandedHeight: 450,
                  backgroundColor: Colors.black,
                  flexibleSpace: FlexibleSpaceBar(
                    collapseMode: CollapseMode.pin,
                    background: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/images/gg1.jpg'),
                              fit: BoxFit.cover)
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.bottomRight,
                                colors: [Colors.black , Colors.black.withOpacity(0.3) ,])
                        ),
                        child: Padding(padding: EdgeInsets.all(20) ,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  FadeAnimation(1 , Text("Cemre Baysel" ,
                                    style: TextStyle(color: Colors.white , fontSize: 40 , fontWeight: FontWeight.bold) ,)),
                                  Icon(Icons.check_circle_sharp , color: Colors.blue[700], size: 30,)
                                ],
                              ) ,
                              SizedBox(height: 20,),
                              Row(
                                children: [
                                  FadeAnimation(1.2 , Text("120 Post" ,
                                    style: TextStyle(color: Colors.grey , fontSize: 16 ) ,)) ,
                                  SizedBox(width: 50,),
                                  FadeAnimation(1.3 , Text("1.3M Followers" ,
                                      style: TextStyle(color: Colors.grey , fontSize: 16 ,)) ),
                                ],)
                            ],),
                        ),
                      ),
                    ),
                  ),
                ),
                //-----------------------------------------------------------------
                SliverList(delegate: SliverChildListDelegate([
                  Padding(padding: EdgeInsets.all(20) ,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FadeAnimation(1.6 , Text("She became famous for her youthful features and romantic roles,"
                            " especially in the series The Game of Luck, More Beautiful Than You,and Layla."
                            " She graduated from Ege University with a degree in Fine Arts Education and began her artistic career in 2014. " ,
                            style: TextStyle(color: Colors.grey , height: 1.4))),
                        SizedBox(height: 40,),
                        FadeAnimation(1.7 , Text("Born" , style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontSize: 18),)),
                        SizedBox(height: 10,),
                        FadeAnimation(1.8 , Text("February 5th 1999" , style: TextStyle(color: Colors.grey ),)),
                        SizedBox(height: 20,),
                        FadeAnimation(1.9 , Text("Nationality" , style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontSize: 18),)),
                        SizedBox(height: 10,),
                        FadeAnimation(2 , Text("Turkey" , style: TextStyle(color: Colors.grey ),)),
                        SizedBox(height: 20,),
                        FadeAnimation(2.1 , Text("Videos" , style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontSize: 18),)),
                        SizedBox(height: 20,),
                        FadeAnimation(2.2 , Container(
                          height: 200,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              makeVideo(image: 'assets/images/g2.jpg'),
                              makeVideo(image: 'assets/images/gg2.webp'),
                              makeVideo(image: 'assets/images/gg4.jpeg'),
                              makeVideo(image: 'assets/images/gg3.jpeg'),
                            ],
                          ),)
                        ),
                        SizedBox(height: 120,)
                      ],
                    ),
                  ),
                ])),
              ],
            ),
            Positioned.fill(
                bottom: 50,
                child: Container(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: FadeAnimation(2 ,
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 30),
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.blueAccent,
                          ),
                          child: Align(child: Text("Follow" , style: TextStyle(color: Colors.white),),),
                        )),
                  ),
                ))
          ],
        ));
  }
  Widget makeVideo ({image}){
    return AspectRatio(aspectRatio: 1.5/1 ,
        child: Container(
          margin: EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(image: AssetImage(image) ,
              fit: BoxFit.cover,),
          ),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [Colors.black.withOpacity(.9) , Colors.black.withOpacity(0.3) ,])
            ),
            child: Align(
              child: Icon(Icons.play_arrow , color: Colors.white , size: 70 ,),
            ),
          ),
        )
    );
  }
}
