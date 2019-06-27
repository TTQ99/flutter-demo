import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: new Column(
        children: <Widget>[
          FlatButton(
            child: Text(
              'TextWidget',
              style: TextStyle(
                height: 2,
              ),
            ),
            textColor: Colors.blue,
            onPressed: () {
              Navigator.push(context, new MaterialPageRoute(builder: (context) {
                return new TextPage('1');
              }));
            },
          ),
          FlatButton(
            child: Text(
              'TextSpanWidget',
              style: TextStyle(
                height: 2,
              ),
            ),
            textColor: Colors.blue,
            onPressed: () {
              Navigator.push(context, new MaterialPageRoute(builder: (context) {
                return new TextPageSpan();
              }));
            },
          ),
          FlatButton(
            child: Text(
              'button',
              style: TextStyle(
                height: 2,
              ),
            ),
            textColor: Colors.blue,
            onPressed: () {
              Navigator.push(context, new MaterialPageRoute(builder: (context) {
                return new MyButton();
              }));
            },
          ),
          FlatButton(
            child: Text(
              'image',
              style: TextStyle(
                height: 2,
              ),
            ),
            textColor: Colors.blue,
            onPressed: () {
              Navigator.push(context, new MaterialPageRoute(builder: (context) {
                return new MyImg();
              }));
            },
          ),
          FlatButton(
            child: Text(
              'Row',
              style: TextStyle(
                height: 2,
              ),
            ),
            textColor: Colors.blue,
            onPressed: () {
              Navigator.push(context, new MaterialPageRoute(builder: (context) {
                return new DistributionRow();
              }));
            },
          ),
          FlatButton(
            child: Text(
              'Flex',
              style: TextStyle(
                height: 2,
              ),
            ),
            textColor: Colors.blue,
            onPressed: () {
              Navigator.push(context, new MaterialPageRoute(builder: (context) {
                return new DistributionFlex();
              }));
            },
          ),
          FlatButton(
            child: Text(
              'Wrap',
              style: TextStyle(
                height: 2,
              ),
            ),
            textColor: Colors.blue,
            onPressed: () {
              Navigator.push(context, new MaterialPageRoute(builder: (context) {
                return new DistributionWrap();
              }));
            },
          ),
          FlatButton(
            child: Text(
              'Padding',
              style: TextStyle(
                height: 2,
              ),
            ),
            textColor: Colors.blue,
            onPressed: () {
              Navigator.push(context, new MaterialPageRoute(builder: (context) {
                return new PaddingWidget();
              }));
            },
          ),
          FlatButton(
            child: Text(
              'Scafold',
              style: TextStyle(
                height: 2,
              ),
            ),
            textColor: Colors.blue,
            onPressed: () {
              Navigator.push(context, new MaterialPageRoute(builder: (context) {
                return new ScaffoldRoute();
              }));
            },
          ),
        ],
      ),
    );
  }
}

class ScaffoldRoute extends StatefulWidget {
  @override
  _ScaffoldRouteState createState() => _ScaffoldRouteState();
}

class _ScaffoldRouteState extends State<ScaffoldRoute> {
  int _selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App name'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {},
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.business), title: Text('Business')),
          BottomNavigationBarItem(
              icon: Icon(Icons.school), title: Text('School')),
        ],
        onTap: (int idx) {
          setState(() {
            _selectedIndex = idx;
          });
        },
      ),
    );
  }
}

class PaddingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Padding(
            padding: EdgeInsets.fromLTRB(116, 226, 36, 50),
            child: Text('123')));
  }
}

class DistributionWrap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[Text('xxx' * 100)],
    );
  }
}

class DistributionFlex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Flex(
        direction: Axis.horizontal,
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              height: 30.0,
              color: Colors.red,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 30,
              color: Colors.yellow,
            ),
          )
        ],
      ),
    );
  }
}

class DistributionRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(" 1 "),
          Text(" 2 "),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(" 1 "),
          Text(" 2 "),
          Text(" 3 "),
        ],
      ),
      Row(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(" 1 "),
          Text(" 2 "),
          Text(" 3 "),
        ],
      ),
    ]));
  }
}

class TextPage extends StatelessWidget {
  final String title;
  TextPage(this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Text(
        title * 10,
        textAlign: TextAlign.start,
        maxLines: 2,
        textScaleFactor: 0.5,
        overflow: TextOverflow.fade,
        style: TextStyle(
          color: Colors.yellow,
          fontSize: 180,
          height: 2,
          decoration: TextDecoration.none,
        ),
      ),
    );
  }
}

class TextPageSpan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text.rich(TextSpan(children: [
      TextSpan(
          text: 'home:',
          style:
              TextStyle(color: Colors.white, decoration: TextDecoration.none)),
      TextSpan(
          text: 'https://flutterchina.club',
          style: TextStyle(color: Colors.blue, decoration: TextDecoration.none))
    ])));
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: OutlineButton(
        child: Text('i am a Button!1'),
        onPressed: () => {},
      ),
    );
  }
}

class MyImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: new Column(
          children: <Widget>[
            Image.network(
                'https://avatars2.githubusercontent.com/u/20411648?s=460&v=4',
                width: 100)
          ],
        ));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'You have pushed the button this many times:',
            ),
            new Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
