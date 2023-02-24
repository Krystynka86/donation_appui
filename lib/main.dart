import 'package:flutter/material.dart';

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
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white30,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Home',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.2,
          ),
        ),
        leading: const Icon(Icons.menu, color: Colors.black),
        actions: const [
          Padding(
            padding: EdgeInsets.only(
              right: 15,
            ),
            child: Icon(
              Icons.filter,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                childAspectRatio: 2.9 / 1,
                // this is to match the aspect ratio of the ui elements
                crossAxisSpacing: 10, mainAxisSpacing: 14,
                children: [
                  gridviewItem(const Color.fromRGBO(0, 136, 255, 1),
                      Icons.fire_extinguisher, 'Popularity'),
                  gridviewItem(const Color.fromRGBO(132, 92, 238, 1),
                      Icons.calendar_today, 'End Date'),
                  gridviewItem(const Color.fromRGBO(255, 72, 88, 1),
                      Icons.video_collection, 'Newest'),
                  gridviewItem(const Color.fromRGBO(255, 186, 0, 1),
                      Icons.money_off, 'Most founded'),
                  // using created a gridviewItem widget
                ],
              ),
              // adding some spacing
              const SizedBox(
                height: 36,
              ),
              // adding the next widget
              Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  'Recommended',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.w700),
                ),
              ),
              // adding sizeBox again
              const SizedBox(height: 28),
              // adding the next widget
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 2,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: const Image(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://i.pinimg.com/originals/c0/45/b7/c045b7e73cfe085dcbe5d0d1f282686f.png"),
                              ),
                            ),
                          ),
                          //adding another text widget over this
                          const Padding(
                            padding: EdgeInsets.only(
                              left: 18,
                              top: 24,
                            ),
                            child: Text(
                              'Kids Education',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                      // adding another sizedBox
                      const SizedBox(
                        height: 36,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text(
                                '244',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 6),
                              Text(
                                'DONARS',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.2),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "\$ 6,000",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 6),
                              Text(
                                'RAISED',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.2),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "\$ 7,000",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 6),
                              Text(
                                'GOAL',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.2),
                              ),
                            ],
                          ),
                          // Copying the above column and pasting it two times
                        ],
                      ),
                      // adding another sizedbox
                      SizedBox(height: 12),
                      // Slider for displaying the amount raised
                      SliderTheme(
                        child: Slider.adaptive(
                            value: 90, min: 0, max: 100, onChanged: null),
                        data: SliderTheme.of(context).copyWith(
                          disabledInactiveTickMarkColor:
                              const Color.fromRGBO(255, 70, 87, 1),
                          trackHeight: 4,
                          thumbColor: Colors.transparent,
                          thumbShape: const RoundSliderThumbShape(
                              enabledThumbRadius: 0),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget gridviewItem(
    color,
    icon,
    text,
  ) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(36),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
          SizedBox(
            width: 4,
          ),
          Text(text,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500))
        ],
      ),
    );
  }
}
