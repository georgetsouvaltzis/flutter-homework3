import 'package:flutter/material.dart';

void main() {
  runApp(const HomeworkApp());
}

class HomeworkApp extends StatelessWidget {
  const HomeworkApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animals',
      home: HomeScreen()
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _imageUrl = "assets/bunny.png";
  String _description = "Bunny";
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if(constraints.maxWidth > 600) {
          return
              Scaffold(
                appBar: AppBar(
                  title: Text("Animals"), centerTitle: true
                ),
                body:
                    Stack(
                      fit: StackFit.passthrough,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal:50,vertical: 50),
                            child: Image.asset(_imageUrl,width: 100,height: 100),
                          ),
                          Container(
                            child: Text(_description, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                            margin: EdgeInsets.only(top:50, right: 50),
                          )
                        ]
                      ),
                      Container(
                        margin: EdgeInsets.only(left:400, top:70),
                        child: Column(
                          children: [
                            Row(
                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                FloatingActionButton(
                                    child: Text("Falcon"),
                                    onPressed: ()
                                    {
                                      setState(() {
                                        _imageUrl = "assets/falcon.png";
                                        _description = "Falcon standing backwards";
                                      });
                                    }),
                                FloatingActionButton(
                                    child: Text("Parrot"),
                                    onPressed: () {
                                      setState(() {
                                        _imageUrl = "assets/parrot.png";
                                        _description = "Red parrot with green wings looking sideways";
                                      });
                                    }),
                              ]
                            ),
                            Padding(
                              padding: EdgeInsets.only(top:30),
                            child:
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                FloatingActionButton(
                                    child: Text("Cat"),
                                    onPressed: () {
                                      setState(() {
                                        _imageUrl = "assets/cat.png";
                                        _description  = "Fluffy cat laying on its stomach";
                                      });
                                    }),
                                FloatingActionButton(
                                    child: Text("Bunny"),
                                    onPressed: () {
                                      setState(() {
                                        _imageUrl = "assets/bunny.png";
                                        _description = "Fluffy white bunny with ears up";
                                      });
                                    })
                              ]
                            )
                            ),
                          ]
                        ),
                      )
                    ],
                  )
              );
        } else {
          return Scaffold(
            appBar: AppBar(title: Text("Animals"),centerTitle: true),
            body: Center(
                child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(_imageUrl,width: 100,height: 100),
                    Container(
                      child: Text(_description),
                      margin: EdgeInsets.only(top:90),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top:200),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FloatingActionButton(
                                child: Text("Falcon"),
                                onPressed: ()
                                {
                                  setState(() {
                                    _imageUrl = "assets/falcon.png";
                                    _description = "Falcon standing backwards";
                                  });
                                }),
                            FloatingActionButton(
                                child: Text("Parrot"),
                                onPressed: () {
                                  setState(() {
                                    _imageUrl = "assets/parrot.png";
                                    _description = "Red parrot with green wings looking sideways";
                                  });
                                }),
                          ],
                        )
                    ),
                    Padding(
                        padding: EdgeInsets.only(top:20),
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FloatingActionButton(
                                child: Text("Cat"),
                                onPressed: () {
                                  setState(() {
                                    _imageUrl = "assets/cat.png";
                                    _description  = "Fluffy cat laying on its stomach";
                                  });
                                }),
                            FloatingActionButton(
                                child: Text("Bunny"),
                                onPressed: () {
                                  setState(() {
                                    _imageUrl = "assets/bunny.png";
                                    _description = "Fluffy white bunny with ears up";
                                  });
                                })
                          ],
                        )
                    )
                  ],
                )
            ),
          );
        }
      }
    );

    // return Scaffold(
    //   appBar: AppBar(title: Text("Animals"),centerTitle: true),
    //   body: Center(
    //     child:
    //       Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           Image.asset(_imageUrl,width: 100,height: 100),
    //           Container(
    //             child: Text(_description),
    //             margin: EdgeInsets.only(top:90),
    //           ),
    //           Padding(
    //            padding: EdgeInsets.only(top:200),
    //             child: Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //                   children: [
    //              FloatingActionButton(
    //                  child: Text("Falcon"),
    //                  onPressed: ()
    //                  {
    //                    setState(() {
    //                        _imageUrl = "assets/falcon.png";
    //                        _description = "Falcon standing backwards";
    //                    });
    //                  }),
    //              FloatingActionButton(
    //                  child: Text("Parrot"),
    //                  onPressed: () {
    //                   setState(() {
    //                     _imageUrl = "assets/parrot.png";
    //                     _description = "Red parrot with green wings looking sideways";
    //                   });
    //                  }),
    //            ],
    //           )
    //           ),
    //           Padding(
    //             padding: EdgeInsets.only(top:20),
    //             child:
    //           Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //             children: [
    //               FloatingActionButton(
    //                 child: Text("Cat"),
    //                 onPressed: () {
    //                   setState(() {
    //                     _imageUrl = "assets/cat.png";
    //                     _description  = "Fluffy cat laying on its stomach";
    //                   });
    //                 }),
    //               FloatingActionButton(
    //                 child: Text("Bunny"),
    //                 onPressed: () {
    //                   setState(() {
    //                     _imageUrl = "assets/bunny.png";
    //                     _description = "Fluffy white bunny with ears up";
    //                   });
    //                 })
    //             ],
    //           )
    //           )
    //         ],
    //       )
    //   ),
    // );
  }
}



