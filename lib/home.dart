import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController animationController;

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    super.initState();
    animation = CurvedAnimation(
      curve: Curves.easeInOut,
      parent: animationController,
    );
    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            'assets/girl.jpeg',
            fit: BoxFit.cover,
            color: Colors.black87,
            colorBlendMode: BlendMode.darken,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AnimatedBuilder(
                animation: animation,
                builder: (context, child) => FlutterLogo(
                  size: animation.value * 100,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(30),
                child: Form(
                  child: Theme(
                    data: ThemeData(brightness: Brightness.dark),
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Enter Email',
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        TextFormField(
                          decoration:
                              InputDecoration(labelText: 'Enter Password'),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                        ),
                        Padding(padding: EdgeInsets.only(top: 30)),
                        MaterialButton(
                          onPressed: () {},
                          color: Colors.green[400],
                          child: Icon(Icons.arrow_forward),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
