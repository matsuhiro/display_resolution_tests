import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
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
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(
            '${MediaQuery.of(context).size.width}x${MediaQuery.of(context).size.height}'),
      ),
      body: SingleChildScrollView(
        child: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            children: <Widget>[
              Padding(
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
                child: FittedBox(
                  child: Group1(),
                ),
              ),
              Group1(),
              ScreenUtilGroup(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Group1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return // Rectangle 1
        Container(
            width: 349,
            height: 517,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                border: Border.all(color: const Color(0xff000000), width: 0),
                color: const Color(0x03927bee)),
            child: Stack(children: [
              // Rectangle 2
              PositionedDirectional(
                top: 20,
                start: 18,
                child: Container(
                    width: 314,
                    height: 274,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: const Color(0xff7b87f2))),
              ),
              // Rectangle 3
              PositionedDirectional(
                top: 47,
                start: 47,
                child: Container(
                  width: 100,
                  height: 100,
                  child: Image.asset('assets/image_1.jpeg', fit: BoxFit.cover),
                ),
              ),
              // Rectangle 4
              PositionedDirectional(
                top: 114,
                start: 125,
                child: Container(
                  width: 100,
                  height: 100,
                  child: Image.asset('assets/image_2.jpeg', fit: BoxFit.cover),
                ),
              ),
              // Rectangle 5
              PositionedDirectional(
                top: 177,
                start: 213,
                child: Container(
                  width: 100,
                  height: 100,
                  child: Image.asset('assets/image_3.jpeg', fit: BoxFit.cover),
                ),
              ),
              // This is my sample project.
              PositionedDirectional(
                top: 302,
                start: 18,
                child: SizedBox(
                    width: 314,
                    height: 87,
                    child: Text("This is my sample project.",
                        style: const TextStyle(
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Roboto",
                            fontStyle: FontStyle.normal,
                            fontSize: 36.0))),
              ),
              // Rectangle 6
              PositionedDirectional(
                top: 458,
                start: 18,
                child: Container(
                    width: 314,
                    height: 42,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(
                            color: const Color(0xff9b133c), width: 1),
                        color: const Color(0xffa7b93c))),
              )
            ]));
  }
}

class ScreenUtilGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance =
        ScreenUtil(width: 411, height: 616, allowFontScaling: true)
          ..init(context);
    return // Rectangle 1
        Container(
            width: ScreenUtil.getInstance().setWidth(349),
            height: ScreenUtil.getInstance().setHeight(517),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                border: Border.all(color: const Color(0xff000000), width: 0),
                color: const Color(0x03927bee)),
            child: Stack(children: [
              // Rectangle 2
              PositionedDirectional(
                top: ScreenUtil.getInstance().setHeight(20),
                start: ScreenUtil.getInstance().setWidth(18),
                child: Container(
                    width: ScreenUtil.getInstance().setWidth(314),
                    height: ScreenUtil.getInstance().setHeight(274),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: const Color(0xff7b87f2))),
              ),
              // Rectangle 3
              PositionedDirectional(
                top: ScreenUtil.getInstance().setHeight(47),
                start: ScreenUtil.getInstance().setWidth(47),
                child: Container(
                  width: ScreenUtil.getInstance().setWidth(100),
                  height: ScreenUtil.getInstance().setHeight(100),
                  child: Image.asset('assets/image_1.jpeg', fit: BoxFit.cover),
                ),
              ),
              // Rectangle 4
              PositionedDirectional(
                top: ScreenUtil.getInstance().setHeight(114),
                start: ScreenUtil.getInstance().setWidth(125),
                child: Container(
                  width: ScreenUtil.getInstance().setWidth(100),
                  height: ScreenUtil.getInstance().setHeight(100),
                  child: Image.asset('assets/image_2.jpeg', fit: BoxFit.cover),
                ),
              ),
              // Rectangle 5
              PositionedDirectional(
                top: ScreenUtil.getInstance().setHeight(177),
                start: ScreenUtil.getInstance().setWidth(213),
                child: Container(
                  width: ScreenUtil.getInstance().setWidth(100),
                  height: ScreenUtil.getInstance().setHeight(100),
                  child: Image.asset('assets/image_3.jpeg', fit: BoxFit.cover),
                ),
              ),
              // This is my sample project.
              PositionedDirectional(
                top: ScreenUtil.getInstance().setHeight(302),
                start: ScreenUtil.getInstance().setWidth(18),
                child: SizedBox(
                    width: ScreenUtil.getInstance().setWidth(314),
                    height: ScreenUtil.getInstance().setHeight(87),
                    child: Text("This is my sample project.",
                        style: const TextStyle(
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Roboto",
                            fontStyle: FontStyle.normal,
                            fontSize: 36.0))),
              ),
              // Rectangle 6
              PositionedDirectional(
                top: ScreenUtil.getInstance().setHeight(458),
                start: ScreenUtil.getInstance().setWidth(18),
                child: Container(
                    width: ScreenUtil.getInstance().setWidth(314),
                    height: ScreenUtil.getInstance().setHeight(42),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(
                            color: const Color(0xff9b133c), width: 1),
                        color: const Color(0xffa7b93c))),
              )
            ]));
  }
}
