import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false, // Remove the debug banner

      theme: ThemeData(

        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Whatsapp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //

    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return DefaultTabController(
        length: 4,

    child : Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Color(0xFF01A884), // Corrected color format
// Corrected color format
        toolbarHeight: 60.0, // Adjust the height as needed (default is 56.0)


        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom:0),
              child: Row(
                children: [
                  Text(widget.title,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  Spacer(), // Spacer to evenly distribute space

                  Icon(Icons.camera_alt_outlined ,color: Colors.white,),

                  Icon(Icons.more_vert ,
                    color: Colors.white,),
                ],
              ),

            ),
            SizedBox(height: 20,),


          ],

        ),
        bottom: TabBar(
          // indicator: BoxDecoration(
          //   // color: Colors.white // Indicator color
          //   // borderRadius: BorderRadius.circular(10), // Optional: rounded corners
          // ),
          indicatorColor: Colors.white, // Color of the indicator bar


          tabs: [
            Tab(icon: Icon(Icons.people_rounded, color: Colors.white)),
            Tab(child: Text("Chats", style: TextStyle(color: Colors.white, fontSize: 18))),
            Tab(child: Text("Status", style: TextStyle(color: Colors.white, fontSize: 18))),
            Tab(child: Text("Calls", style: TextStyle(color: Colors.white, fontSize: 18))),
          ],
        ),
      ),

  body: TabBarView(
    children : [
  Container(
  child: Column(
  children: [
    Container(
    child: Image.asset(
    'assets/images/community.webp',
    height: 300.0,         // Optional: height of the image
    width: 300.0,          // Optional: width of the image
    fit: BoxFit.cover,     // Optional: how the image should be inscribed into the box
    // color: Colors.red,     // Optional: apply a color filter to the image
    // colorBlendMode: BlendMode.colorBurn, // Optional: blend mode to apply to the color filter
  ),
    ),
      SizedBox(height: 10,),
      Text(
        "Stay connected with a community",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    SizedBox(height: 10,),

    Container(
      width: 300,
      child: Text("Coomunity bring members togerther in a topic based groups, and make it easy to get admin announcements. Any community you are added will be appear here. "
      ),
    ),
   SizedBox(height: 10,),
    Text("See examples communities >",style: TextStyle(color: Colors.green,)),
SizedBox(height: 20,),
ElevatedButton(onPressed: (){

},
  child: Text("Start your community",style: TextStyle(color: Colors.white,),),
  style: ElevatedButton.styleFrom(
    // primary: Colors.blue, // Background color
    // onPrimary: Colors.white, // Text color
    // shadowColor: Colors.black, // Shadow color
    backgroundColor: Colors.green,
    elevation: 5, // Elevation
    textStyle: TextStyle(fontSize: 20), // Text style
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15), // Padding

  ),),

      ],
    ),
    ),


    Container(
        child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 400,
              height: 70,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: TextField(

                    style: TextStyle(

                      color: Colors.black, // Set your desired text color here
                    ),
                    decoration: InputDecoration(

                        hintText: 'Ask Meta AI or Search',
                        hintStyle: TextStyle(

                          color: Colors.grey, // Set hint text color here
                        ),
                        prefixIcon: Icon(Icons.circle_outlined,color: CupertinoColors.systemBlue,), // Icon at the end of the TextField



                        filled: true, // Enable the filled property
                        fillColor: Color(0xFFEFEFEF),
                        border: OutlineInputBorder(

                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(

                              color: Colors.red,
                              width: 2,
                            )

                        )
                    ),

                  ),
                ),
              ),

            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(

                    // child: Icon(Icons.abc_sharp),
                    width: 60, // Set width as needed
                    height: 60, // Set height as needed
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/images/saad.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                ),
                Container(
                  height: 60,
                  width: 300,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,


                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text("Muhammad Saad Nadeem"),
                          SizedBox(height: 10,),
                          Container(
                              margin: EdgeInsets.only(left:10.0), // Adds margin to all sides

                              child: Text("data",style: TextStyle(color: Colors.grey),)),
                        ],

                      ),

                      Text("12:38 AM")
                    ],
                  ),
                )
              ],

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(

                    // child: Icon(Icons.abc_sharp),
                    width: 60, // Set width as needed
                    height: 60, // Set height as needed
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/images/usman-img.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                ),
                Container(
                  height: 60,
                  width: 300,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,


                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text("Usman Ahmed"),
                          SizedBox(height: 10,),
                          Container(
                              margin: EdgeInsets.only(left:10.0), // Adds margin to all sides

                              child: Text("Hello",style: TextStyle(color: Colors.grey),)),
                        ],

                      ),

                      Text("07:35 PM")
                    ],
                  ),
                )
              ],

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(

                    // child: Icon(Icons.abc_sharp),
                    width: 60, // Set width as needed
                    height: 60, // Set height as needed
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/images/r1.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                ),
                Container(
                  height: 60,
                  width: 300,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,


                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text("Uzair Ahmed"),
                          SizedBox(height: 10,),
                          Container(
                              margin: EdgeInsets.only(left:10.0), // Adds margin to all sides

                              child: Text("njdj",style: TextStyle(color: Colors.grey),)),
                        ],

                      ),

                      Text("03:58 PM")
                    ],
                  ),
                )
              ],

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(

                    // child: Icon(Icons.abc_sharp),
                    width: 60, // Set width as needed
                    height: 60, // Set height as needed
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/images/ahmed-img.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                ),
                Container(
                  height: 60,
                  width: 300,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,


                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text("Ahmed Chattha"),
                          SizedBox(height: 10,),
                          Container(
                              margin: EdgeInsets.only(left:10.0), // Adds margin to all sides

                              child: Text("data",style: TextStyle(color: Colors.grey),)),
                        ],

                      ),

                      Text("12:02 PM")
                    ],
                  ),
                )
              ],

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(

                    // child: Icon(Icons.abc_sharp),
                    width: 60, // Set width as needed
                    height: 60, // Set height as needed
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/images/r2.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                ),
                Container(
                  height: 60,
                  width: 300,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,


                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text("Zain"),
                          SizedBox(height: 10,),
                          Container(
                              margin: EdgeInsets.only(left:10.0), // Adds margin to all sides

                              child: Text("data",style: TextStyle(color: Colors.grey),)),
                        ],

                      ),

                      Text("Yesterday")
                    ],
                  ),
                )
              ],

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(

                    // child: Icon(Icons.abc_sharp),
                    width: 60, // Set width as needed
                    height: 60, // Set height as needed
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/images/r6.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                ),
                Container(
                  height: 60,
                  width: 300,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,


                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text("Zohaib Anwar"),
                          SizedBox(height: 10,),
                          Container(
                              margin: EdgeInsets.only(left:10.0), // Adds margin to all sides

                              child: Text("njdacs",style: TextStyle(color: Colors.grey),)),
                        ],

                      ),

                      Text("Yesterday")
                    ],
                  ),
                )
              ],

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(

                    // child: Icon(Icons.abc_sharp),
                    width: 60, // Set width as needed
                    height: 60, // Set height as needed
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/images/arham-img.JPG"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                ),
                Container(
                  height: 60,
                  width: 300,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,


                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text("Ch Arham"),
                          SizedBox(height: 10,),
                          Container(
                              margin: EdgeInsets.only(left:10.0), // Adds margin to all sides

                              child: Text("afnjfadnjaf",style: TextStyle(color: Colors.grey),)),
                        ],

                      ),

                      Text("7/20/24")
                    ],
                  ),
                )
              ],

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(

                    // child: Icon(Icons.abc_sharp),
                    width: 60, // Set width as needed
                    height: 60, // Set height as needed
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/images/r5.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                ),
                Container(
                  height: 60,
                  width: 300,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,


                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text("Muhammad Asif"),
                          SizedBox(height: 10,),
                          Container(
                              margin: EdgeInsets.only(left:10.0), // Adds margin to all sides

                              child: Text("afdnjanjadf",style: TextStyle(color: Colors.grey),)),
                        ],

                      ),

                      Text("7/19/24")
                    ],
                  ),
                )
              ],

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(

                    // child: Icon(Icons.abc_sharp),
                    width: 60, // Set width as needed
                    height: 60, // Set height as needed
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/images/r5.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                ),
                Container(
                  height: 60,
                  width: 300,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,


                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text("Muhammad Asif"),
                          SizedBox(height: 10,),
                          Container(
                              margin: EdgeInsets.only(left:10.0), // Adds margin to all sides

                              child: Text("afdnjanjadf",style: TextStyle(color: Colors.grey),)),
                        ],

                      ),

                      Text("7/19/24")
                    ],
                  ),
                )
              ],

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(

                    // child: Icon(Icons.abc_sharp),
                    width: 60, // Set width as needed
                    height: 60, // Set height as needed
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/images/r5.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                ),
                Container(
                  height: 60,
                  width: 300,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,


                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text("Muhammad Asif"),
                          SizedBox(height: 10,),
                          Container(
                              margin: EdgeInsets.only(left:10.0), // Adds margin to all sides

                              child: Text("afdnjanjadf",style: TextStyle(color: Colors.grey),)),
                        ],

                      ),

                      Text("7/19/24")
                    ],
                  ),
                )
              ],

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(

                    // child: Icon(Icons.abc_sharp),
                    width: 60, // Set width as needed
                    height: 60, // Set height as needed
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/images/r5.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                ),
                Container(
                  height: 60,
                  width: 300,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,


                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text("Muhammad Asif"),
                          SizedBox(height: 10,),
                          Container(
                              margin: EdgeInsets.only(left:10.0), // Adds margin to all sides

                              child: Text("afdnjanjadf",style: TextStyle(color: Colors.grey),)),
                        ],

                      ),

                      Text("7/19/24")
                    ],
                  ),
                )
              ],

            ),

          ],
        ),
            ),
      ),


      Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Status",style: TextStyle(fontSize: 22),),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Padding(
                      padding: const EdgeInsets.all( 0,),
                      child: Container(

                        // child: Icon(Icons.abc_sharp),
                        width: 60, // Set width as needed
                        height: 60, // Set height as needed
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage("assets/images/saad.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              right: 0,
                              bottom: 0,
                              child: Container(
                                width: 20, // Adjust size as needed
                                height: 20, // Adjust size as needed
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFF01A884),
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,

                                  size: 15, // Adjust size as needed
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 5,),
                    Container(
                      height: 60,
                      width: 300,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,


                        children: [
                          Column(

                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                             SizedBox(height: 5,),
                              Text("My Status"),
                              SizedBox(height: 5,),
                              Container(
                                  // margin: EdgeInsets.only(left:10.0), // Adds margin to all sides

                                  child: Text("Tap to add Status update",style: TextStyle(color: Colors.grey),)),
                            ],

                          ),


                        ],
                      ),
                    ),

                  ],
                  

                ),
                SizedBox(height: 10),
                Text("Recent Status",style: TextStyle(color: Colors.grey ,fontSize: 16),),


                SizedBox(height: 20,),
                Text("Channels",style: TextStyle(fontSize: 26),),
                SizedBox(height: 10,),
                Text("Stay updated on topics that matter to you. Find channels to follow below.",style: TextStyle(color: Colors.grey ,fontSize: 16),),
                SizedBox(height: 20,),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal, // Ensure horizontal scrolling

                  child: Row(
                    children: [
                      Container(
                        child: Stack(
                          alignment: AlignmentDirectional.center,
                          children: [
                            // Outer Container with rectangular border
                            Container(
                              width: 160, // Size of the border container
                              height: 220, // Size of the border container
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey, // Border color
                                  width: 1.0, // Border width
                                ),
                                borderRadius: BorderRadius.circular(16), // Rounded corners for the border
                              ),
                            ),
                            // Inner Container with circular image
                            Column(
                              children: [
                                Container(
                                  width: 100, // Size of the image container
                                  height: 100, // Size of the image container
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/whatsapp.png"),
                                      fit: BoxFit.cover,

                                    ),
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text("Whatsapp"),
                                SizedBox(height: 10,),
                                ElevatedButton(onPressed: (){

                                }, child: Text("Follow",style: TextStyle(color:Colors.green),),
                                  style: ElevatedButton.styleFrom(

                                    // Text color
                                    backgroundColor: Color(0xFFCCFFCC), // 80% white and 20% green

                                    textStyle: TextStyle(fontSize: 20),
                                    // Text style
                                    // padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15), // Padding

                                  ),)


                              ],
                            ),
                          ],
                        ),
                      ),
                     SizedBox(width: 16,),
                      Container(
                        child: Stack(
                          alignment: AlignmentDirectional.center,
                          children: [
                            // Outer Container with rectangular border
                            Container(
                              width: 160, // Size of the border container
                              height: 220, // Size of the border container
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey, // Border color
                                  width: 1.0, // Border width
                                ),
                                borderRadius: BorderRadius.circular(16), // Rounded corners for the border
                              ),
                            ),
                            // Inner Container with circular image
                            Column(
                              children: [
                                Container(
                                  width: 100, // Size of the image container
                                  height: 100, // Size of the image container
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/fc.jpeg"),
                                      fit: BoxFit.cover,

                                    ),
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text("FC Barcelona"),
                                SizedBox(height: 10,),
                                ElevatedButton(onPressed: (){

                                }, child: Text("Follow",style: TextStyle(color:Colors.green),),
                                  style: ElevatedButton.styleFrom(

                                    // Text color
                                    backgroundColor: Color(0xFFCCFFCC), // 80% white and 20% green

                                    textStyle: TextStyle(fontSize: 20),
                                    // Text style
                                    // padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15), // Padding

                                  ),)


                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 16,),
                      Container(
                        child: Stack(
                          alignment: AlignmentDirectional.center,
                          children: [
                            // Outer Container with rectangular border
                            Container(
                              width: 160, // Size of the border container
                              height: 220, // Size of the border container
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey, // Border color
                                  width: 1.0, // Border width
                                ),
                                borderRadius: BorderRadius.circular(16), // Rounded corners for the border
                              ),
                            ),
                            // Inner Container with circular image
                            Column(
                              children: [
                                Container(
                                  width: 100, // Size of the image container
                                  height: 100, // Size of the image container
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/spotify.png"),
                                      fit: BoxFit.cover,

                                    ),
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text("Spotify"),
                                SizedBox(height: 10,),
                                ElevatedButton(onPressed: (){

                                }, child: Text("Follow",style: TextStyle(color:Colors.green),),
                                  style: ElevatedButton.styleFrom(

                                    // Text color
                                    backgroundColor: Color(0xFFCCFFCC), // 80% white and 20% green

                                    textStyle: TextStyle(fontSize: 20),
                                    // Text style
                                    // padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15), // Padding

                                  ),)


                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 16,),
                      Container(
                        child: Stack(
                          alignment: AlignmentDirectional.center,
                          children: [
                            // Outer Container with rectangular border
                            Container(
                              width: 160, // Size of the border container
                              height: 220, // Size of the border container
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey, // Border color
                                  width: 1.0, // Border width
                                ),
                                borderRadius: BorderRadius.circular(16), // Rounded corners for the border
                              ),
                            ),
                            // Inner Container with circular image
                            Column(
                              children: [
                                Container(
                                  width: 100, // Size of the image container
                                  height: 100, // Size of the image container
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/pcb.jpeg"),
                                      fit: BoxFit.cover,

                                    ),
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text("PCB"),
                                SizedBox(height: 10,),
                                ElevatedButton(onPressed: (){

                                }, child: Text("Follow",style: TextStyle(color:Colors.green),),
                                  style: ElevatedButton.styleFrom(

                                    // Text color
                                    backgroundColor: Color(0xFFCCFFCC), // 80% white and 20% green

                                    textStyle: TextStyle(fontSize: 20),
                                    // Text style
                                    // padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15), // Padding

                                  ),)


                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 16,),
                      Container(
                        child: Stack(
                          alignment: AlignmentDirectional.center,
                          children: [
                            // Outer Container with rectangular border
                            Container(
                              width: 160, // Size of the border container
                              height: 220, // Size of the border container
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey, // Border color
                                  width: 1.0, // Border width
                                ),
                                borderRadius: BorderRadius.circular(16), // Rounded corners for the border
                              ),
                            ),
                            // Inner Container with circular image
                            Column(
                              children: [
                                Container(
                                  width: 100, // Size of the image container
                                  height: 100, // Size of the image container
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/code.jpeg"),
                                      fit: BoxFit.cover,

                                    ),
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text("Coding"),
                                SizedBox(height: 10,),
                                ElevatedButton(onPressed: (){

                                }, child: Text("Follow",style: TextStyle(color:Colors.green),),
                                  style: ElevatedButton.styleFrom(

                                    // Text color
                                    backgroundColor: Color(0xFFCCFFCC), // 80% white and 20% green

                                    textStyle: TextStyle(fontSize: 20),
                                    // Text style
                                    // padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15), // Padding

                                  ),)


                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 16,),
                      Container(
                        child: Stack(
                          alignment: AlignmentDirectional.center,
                          children: [
                            // Outer Container with rectangular border
                            Container(
                              width: 160, // Size of the border container
                              height: 220, // Size of the border container
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey, // Border color
                                  width: 1.0, // Border width
                                ),
                                borderRadius: BorderRadius.circular(16), // Rounded corners for the border
                              ),
                            ),
                            // Inner Container with circular image
                            Column(
                              children: [
                                Container(
                                  width: 100, // Size of the image container
                                  height: 100, // Size of the image container
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/motivation.png"),
                                      fit: BoxFit.cover,

                                    ),
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text("Motivational Quotes"),
                                SizedBox(height: 10,),
                                ElevatedButton(onPressed: (){

                                }, child: Text("Follow",style: TextStyle(color:Colors.green),),
                                  style: ElevatedButton.styleFrom(

                                    // Text color
                                    backgroundColor: Color(0xFFCCFFCC), // 80% white and 20% green

                                    textStyle: TextStyle(fontSize: 20),
                                    // Text style
                                    // padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15), // Padding

                                  ),)


                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 16,),

                    ],
                  ),
                ),


              ],
            ),
          )),





    Container(
    child: SingleChildScrollView(
      child: Column(
      children: [
      Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      
      Text(
      "Recent",
      style: TextStyle(fontSize: 22),
      ),
      SizedBox(height: 20,),
      Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
      Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
      width: 60, // Set width as needed
      height: 60, // Set height as needed
      decoration: BoxDecoration(
      shape: BoxShape.circle,
      image: DecorationImage(
      image: AssetImage("assets/images/saad.jpg"),
      fit: BoxFit.cover,
      ),
      ),
      ),
      ),
      Container(
      height: 60,
      // width: 300,
      child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Text("Muhammad Saad Nadeem"),
      SizedBox(height: 10),
      Row(
        children: [
          Container(
          // margin: EdgeInsets.only(left: 10.0), // Adds margin to the left
          child: Icon(Icons.call_made,color: Colors.green,),
      
          // style: TextStyle(color: Colors.grey),
          ),
          SizedBox(width: 20,),
          Text("8:12 PM"),
        ],
      ),
      
      ],
      ),
      SizedBox(width: 50,),
      Icon(Icons.call,color: Colors.green,)
      
      ],
      ),
      ),
      ],
      ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 60, // Set width as needed
                height: 60, // Set height as needed
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("assets/images/saad.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              height: 60,
              // width: 300,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Muhammad Saad Nadeem"),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            // margin: EdgeInsets.only(left: 10.0), // Adds margin to the left
                            child: Icon(Icons.call_received,color: Colors.red,),
      
                            // style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(width: 20,),
                          Text("8:12 PM"),
                        ],
                      ),
      
                    ],
                  ),
                  SizedBox(width: 50,),
                  Icon(Icons.call,color: Colors.green,)
      
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 60, // Set width as needed
                height: 60, // Set height as needed
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("assets/images/saad.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              height: 60,
              // width: 300,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Muhammad Saad Nadeem"),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            // margin: EdgeInsets.only(left: 10.0), // Adds margin to the left
                            child: Icon(Icons.call_made,color: Colors.green,),
      
                            // style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(width: 20,),
                          Text("8:12 PM"),
                        ],
                      ),
      
                    ],
                  ),
                  SizedBox(width: 50,),
                  Icon(Icons.call,color: Colors.green,)
      
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 60, // Set width as needed
                height: 60, // Set height as needed
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("assets/images/saad.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              height: 60,
              // width: 300,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Muhammad Saad Nadeem"),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            // margin: EdgeInsets.only(left: 10.0), // Adds margin to the left
                            child: Icon(Icons.call_received,color: Colors.red,),
      
                            // style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(width: 20,),
                          Text("8:12 PM"),
                        ],
                      ),
      
                    ],
                  ),
                  SizedBox(width: 50,),
                  Icon(Icons.call,color: Colors.green,)
      
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 60, // Set width as needed
                height: 60, // Set height as needed
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("assets/images/saad.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              height: 60,
              // width: 300,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Muhammad Saad Nadeem"),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            // margin: EdgeInsets.only(left: 10.0), // Adds margin to the left
                            child: Icon(Icons.call_made,color: Colors.green,),
      
                            // style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(width: 20,),
                          Text("8:12 PM"),
                        ],
                      ),
      
                    ],
                  ),
                  SizedBox(width: 50,),
                  Icon(Icons.call,color: Colors.green,)
      
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 60, // Set width as needed
                height: 60, // Set height as needed
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("assets/images/saad.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              height: 60,
              // width: 300,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Muhammad Saad Nadeem"),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            // margin: EdgeInsets.only(left: 10.0), // Adds margin to the left
                            child: Icon(Icons.call_made,color: Colors.green,),
      
                            // style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(width: 20,),
                          Text("8:12 PM"),
                        ],
                      ),
      
                    ],
                  ),
                  SizedBox(width: 50,),
                  Icon(Icons.call,color: Colors.green,)
      
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 60, // Set width as needed
                height: 60, // Set height as needed
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("assets/images/saad.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              height: 60,
              // width: 300,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Muhammad Saad Nadeem"),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            // margin: EdgeInsets.only(left: 10.0), // Adds margin to the left
                            child: Icon(Icons.call_made,color: Colors.green,),
      
                            // style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(width: 20,),
                          Text("8:12 PM"),
                        ],
                      ),
      
                    ],
                  ),
                  SizedBox(width: 50,),
                  Icon(Icons.call,color: Colors.green,)
      
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 60, // Set width as needed
                height: 60, // Set height as needed
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("assets/images/saad.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              height: 60,
              // width: 300,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Muhammad Saad Nadeem"),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            // margin: EdgeInsets.only(left: 10.0), // Adds margin to the left
                            child: Icon(Icons.call_made,color: Colors.green,),
      
                            // style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(width: 20,),
                          Text("8:12 PM"),
                        ],
                      ),
      
                    ],
                  ),
                  SizedBox(width: 50,),
                  Icon(Icons.call,color: Colors.green,)
      
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 60, // Set width as needed
                height: 60, // Set height as needed
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("assets/images/saad.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              height: 60,
              // width: 300,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Muhammad Saad Nadeem"),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            // margin: EdgeInsets.only(left: 10.0), // Adds margin to the left
                            child: Icon(Icons.call_made,color: Colors.green,),
      
                            // style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(width: 20,),
                          Text("8:12 PM"),
                        ],
                      ),
      
                    ],
                  ),
                  SizedBox(width: 50,),
                  Icon(Icons.call,color: Colors.green,)
      
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 60, // Set width as needed
                height: 60, // Set height as needed
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("assets/images/saad.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              height: 60,
              // width: 300,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Muhammad Saad Nadeem"),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            // margin: EdgeInsets.only(left: 10.0), // Adds margin to the left
                            child: Icon(Icons.call_made,color: Colors.green,),
      
                            // style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(width: 20,),
                          Text("8:12 PM"),
                        ],
                      ),
      
                    ],
                  ),
                  SizedBox(width: 50,),
                  Icon(Icons.call,color: Colors.green,)
      
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 60, // Set width as needed
                height: 60, // Set height as needed
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("assets/images/saad.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              height: 60,
              // width: 300,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Muhammad Saad Nadeem"),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            // margin: EdgeInsets.only(left: 10.0), // Adds margin to the left
                            child: Icon(Icons.call_made,color: Colors.green,),
      
                            // style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(width: 20,),
                          Text("8:12 PM"),
                        ],
                      ),
      
                    ],
                  ),
                  SizedBox(width: 50,),
                  Icon(Icons.call,color: Colors.green,)
      
                ],
              ),
            ),
          ],
        ),
      
      ],
      ),
      ),
      ],
      ),
    ),
    ),


    ],
      // body: Center(
      //   // Center is a layout widget. It takes a single child and positions it
      //   // in the middle of the parent.
      //   child: Column(
      //     // Column is also a layout widget. It takes a list of children and
      //     // arranges them vertically. By default, it sizes itself to fit its
      //     // children horizontally, and tries to be as tall as its parent.
      //     //
      //     // Column has various properties to control how it sizes itself and
      //     // how it positions its children. Here we use mainAxisAlignment to
      //     // center the children vertically; the main axis here is the vertical
      //     // axis because Columns are vertical (the cross axis would be
      //     // horizontal).
      //     //
      //     // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
      //     // action in the IDE, or press "p" in the console), to see the
      //     // wireframe for each widget.
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       const Text(
      //         'You have pushed the button this many times:',
      //       ),
      //       Text(
      //         '$_counter',
      //         style: Theme.of(context).textTheme.headlineMedium,
      //       ),
      //     ],
      //   ),
      // ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    ),
    ),
    );
  }
}
