import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'splashscreen/splash_screen.dart';

void main() {
  runApp(

    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),

    )
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu,color:Colors.black87),
          onPressed: (){},
        ),

      ),
      body:SafeArea(
child:Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children:<Widget>[
    Container(
      width: double.infinity,
      decoration:BoxDecoration(
        color:Colors.white,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))

      ),
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Find Your',style:TextStyle(color:Colors.black87,fontSize: 25)),
          SizedBox(height: 5,),
          Text('Inspiration',style:TextStyle(color:Colors.black,fontSize: 40)),
          SizedBox(height: 10,),

          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color:Color.fromRGBO(244, 243, 243, 1),
              borderRadius: BorderRadius.circular(15)
            ),
            child:TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search,color:Colors.black87),
                hintText: "Search you're looking for",
                hintStyle: TextStyle(color:Colors.grey,fontSize: 15),


              ),
            )
          ),

          SizedBox(
            height: 10,
          )
        ],
      ),
    ),
    SizedBox(
      height: 10,
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child:Column(
crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Promo Today',style:TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
          SizedBox(height: 15,),
          Container(
            height: 200,
            child: ListView(
              scrollDirection:Axis.horizontal,
              children: [
                promoCard('assets/images/pic1.jpg'),
                promoCard('assets/images/pic1.jpg'),
                promoCard('assets/images/pic1.jpg'),
                promoCard('assets/images/pic1.jpg'),
              ],

            ),
          ),
          SizedBox(
            height:20.0,
          ),
          Container(
            height: 150,
            decoration: BoxDecoration(

              color: Colors.blue,
                borderRadius: BorderRadius.circular(20),

              image:DecorationImage(

              fit:BoxFit.cover,
              image: AssetImage('assets/images/pic1.jpg'),
            ),
            ),
              child:Container(
                decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(20),

                    gradient: LinearGradient(

                        begin: Alignment.bottomRight,
                        stops: [0.1,0.9],

                        colors: [
                          Colors.black.withOpacity(.8),
                          Colors.black.withOpacity(.1)

                        ]
                    )
                ),
                  child:Align(
                      alignment: Alignment.bottomLeft,
                      child:Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text('Best Design',style: TextStyle(color:Colors.white,fontSize: 20),),
                      )
                  )
              )
          )
        ],
      )

    )
  ]
),
      ),
    );
  }

  Widget promoCard(image){
return AspectRatio(

    aspectRatio: 2.63 / 3,

    child:Container(
margin: EdgeInsets.only(right:15.0),
      decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(20),
        image:DecorationImage(
          fit:BoxFit.cover,
          image: AssetImage(image),
        ),

      ),

      child:Container(
        decoration: BoxDecoration(

            borderRadius: BorderRadius.circular(20),

            gradient: LinearGradient(

                begin: Alignment.bottomRight,
                stops: [0.1,0.9],

                colors: [
                  Colors.black.withOpacity(.8),
                  Colors.black.withOpacity(.1)

                ]
            )
        ),
      )
    )

);


  }
}

