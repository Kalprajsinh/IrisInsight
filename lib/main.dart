
import 'package:flutter/material.dart';
import 'Eyecare.dart';
import 'Eyemodal.dart';
import 'categories.dart';
import 'eyeml.dart';
import 'webview.dart';
import 'splash_screen.dart';
import 'check_number.dart';


void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final appTitle = 'IrisInsight';

   const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent
      ),

      home: const SplashScreen(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            'assets/images/bg.png',
            fit: BoxFit.cover,
          ),
        ),
        Scaffold(
          // extendBodyBehindAppBar: true,
          appBar: AppBar(
            title: Text('IrisInsight', style: TextStyle(fontWeight: FontWeight.bold, color: Color(
                0xFFFFFFFF))),
            centerTitle: true,
            elevation: 0,
            backgroundColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20), // Adjust the value according to your preference
              ),
            ),
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(7.0),
                  child: SizedBox(
                    height: 5,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(7.0),
                  child: Center(
                    child: Text(
                      "Illuminating eye health through ML",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                        fontFamily: 'Times New Roman',
                      ),
                    ),
                  ),

                ),
                Center(
                  child: const Padding(
                    padding: EdgeInsets.all(1.0),
                    child: Text("───────────────────",style: TextStyle(fontWeight: FontWeight.w100,fontSize: 27,color: Color(
                        0xFF5E5E5E))),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 5)),

                Container(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 25,
                        spreadRadius: 0,
                        offset: Offset(10, 10),
                      ),
                    ],
                  ),
                  child: MaterialButton(
                    padding: const EdgeInsets.all(12.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                          width: 380,
                          height: 190,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: Image.asset('assets/images/ml.png').image,
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [

                                Text(" Eye Disease Detection        ",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Color(
                                    0xFFD2D2D2)),),
                                Text("     ",style: TextStyle(fontSize: 9),),

                              ],
                            ),
                          )
                      ),
                    ),
                    onPressed: () {
                      // _getImage(context);
                      //_getCameraImage(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => eyeinputins()),
                      );
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text("Check Your Eye",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white70)),
                ),
                    Container(
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black38,
                            blurRadius: 25,
                            spreadRadius: 0,
                            offset: Offset(10, 10),
                          ),
                        ],
                      ),
                      child: MaterialButton(
                        padding: const EdgeInsets.all(12.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Container(
                              width: 380,
                              height: 160,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: Image.asset('assets/images/num.png').image,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text("Let's check your vision",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white70),),
                                    Text("       "),Text("Checking your eye number with test",style: TextStyle(fontSize: 15,color: Colors.white70),),
                                  ],
                                ),
                              )
                          ),
                        ),
                        onPressed: () {
                          // check_numb(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => accept()),
                          );
                        },
                      ),
                    ),
                Center(
                  child: const Padding(
                    padding: EdgeInsets.all(1.0),
                    child: Text("───────────────────",style: TextStyle(fontWeight: FontWeight.w100,fontSize: 27,color: Color(
                        0xFF5E5E5E))),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                          Container(
                            decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black38,
                                  blurRadius: 25,
                                  spreadRadius: 0,
                                  offset: Offset(10, 10),
                                ),
                              ],
                            ),
                            child: MaterialButton(
                              padding: const EdgeInsets.all(12.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Container(
                                    width: 180,
                                    height: 130,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: Image.asset('assets/images/eye1.png').image,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Text("Eye Exercises",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white70),),
                                        ],
                                      ),
                                    )
                                ),
                              ),
                              onPressed: () {
                                Eyemodal(context);
                              },
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black38,
                                  blurRadius: 25,
                                  spreadRadius: 0,
                                  offset: Offset(10, 10),
                                ),
                              ],
                            ),
                            child: MaterialButton(
                              padding: const EdgeInsets.all(12.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Container(
                                    width: 180,
                                    height: 130,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: Image.asset('assets/images/eye2.png').image,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Text("Eyecare",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white70),),
                                          SizedBox(
                                            height: 10,
                                          )
                                        ],
                                      ),
                                    )
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => eyecare()),
                                );
                              },
                            ),
                          ),
                    ],
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.all(7.0),
                  child: Text("𝑶𝒕𝒉𝒆𝒓 𝒇𝒆𝒂𝒕𝒖𝒓𝒆𝒔..",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 23,color: Colors.white70)),
                ),

                Container(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 25,
                        spreadRadius: 0,
                        offset: Offset(10, 10),
                      ),
                    ],
                  ),
                  child: MaterialButton(
                    padding: const EdgeInsets.all(12.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                          width: 380,
                          height: 160,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: Image.asset('assets/images/shop.png').image,
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("Collabrations",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white70),),
                                Text("",style: TextStyle(fontSize: 15,color: Colors.white70),),
                              ],
                            ),
                          )
                      ),
                    ),
                    onPressed: () {
                      web(context);
                    },
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 55,
                )
              ],
            ),
          ),
          drawer: Drawer(
            child: ListView(
              padding: const EdgeInsets.all(0),
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color(0xFF222B41),
                  ), //BoxDecoration
                  child: UserAccountsDrawerHeader(
                    decoration: BoxDecoration(color: Color(0xFF222B41)),
                    accountName: Text(
                      "IrisInsight",
                      style: TextStyle(fontSize: 20),
                    ),
                    accountEmail: Text(""), //circleAvatar
                  ), //UserAccountDrawerHeader
                ), //DrawerHeader

                ListTile(
                  leading: const Icon(Icons.remove_red_eye_outlined),
                  title: const Text('check Eye vision'),
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => check_num()),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.location_on_sharp),
                  title: const Text('Find eye hospitals\nNear Me'),
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Eyehospital()),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.phone),
                  title: const Text('Find Eye Doctor'),
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Eyehospital1()),
                    );
                  },
                ),
              ],
            ),
          ),
          bottomSheet: Positioned(
            child: Container(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 25,
                    spreadRadius: 0,
                    offset: Offset(10, 10),
                  ),
                ],
              ),
              // Adjust the width as needed
              height: 50.0, // Adjust the height as needed
              child: BottomAppBar(
                color: Color(0xFF151515),
                shape: const CircularNotchedRectangle(),
                notchMargin: 4.0,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    IconButton(
                      icon: const Icon(Icons.home,color: Colors.white,),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyHomePage(title: 'IrisInsight')),
                        );
                      },
                    ),
                    Container(
                      width: 10,
                    ),
                    IconButton(
                      icon: const Icon(Icons.location_on_outlined,color: Colors.white,),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Eyehospital1()),
                        );
                      },
                    ),
                    Container(
                      width: 10,
                    ),
                    IconButton(
                      icon: Icon(Icons.explore,color: Colors.white,),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Eyehospital()),
                        );
                      },
                    ),

                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}


void web(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => NextPage()));
}
void categoties(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Categories()));
}

void check_numb(BuildContext context) {
  Navigator.pushReplacement(
      context,
  MaterialPageRoute(builder: (context) => check_num()));
}

void Eyemodal(BuildContext context) {
  Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Eyemodal_()));
}


class accept  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Eye check", style: TextStyle(fontWeight: FontWeight.bold, color: Color(
            0xFFFFFFFF))),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20), // Adjust the value according to your preference
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 3.0,right: 3.0),
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(" ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white70),),
              SizedBox(height: 70),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Color(0xFF545454),
                  borderRadius: BorderRadius.circular(15), // Adjust the radius as needed
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Text(
                      "Instructions",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 50,),
                     Text(
                        "This Vision Screening is designed to provide a first impression about your vision at this time. It's not a medical test and no substitute for eye care by a trained professional. It isn't intended for use in diagnosing diseases or mitigating, treating or preventing diseases. This exam is only meant to give you a general idea of your visual acuity and whether a professional eye exam is recommended at this time. We recommend having your eyes checked by an eye doctor once every two years, or sooner if you notice changes in your vision.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    SizedBox(height: 50,),
              SizedBox(
    width: 250,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => check_num()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
    primary: Colors.white, // Background color
    onPrimary: Colors.black, // Text color
    side: const BorderSide(color: Colors.blue),
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  ),
                  child: Text(
                    'I agree',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ],
    ),
    ),
      ),
    );
  }
}