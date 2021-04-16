import 'package:flutter/material.dart';
import 'package:flutteristas_conference/utils/flutteristas.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Color(0xff9E86BC),
                image: DecorationImage(
                  image: AssetImage(Flutteristas.flutteristas_dash),
                  fit: BoxFit.fitWidth,
                )),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.07,
                  ),
                  Text(
                    Flutteristas.app_name,
                    style: Theme.of(context)
                        .textTheme
                        .headline2
                        .copyWith(fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .6,
                    child: Text(Flutteristas.flutteristas_info),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .4,
                    child: Container(
                        height: 40,
                        margin: EdgeInsets.only(bottom: 5),
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xffC1BBD7).withOpacity(0.6),
                        ),
                        child: Center(
                          child: Text(
                            Flutteristas.hashtag,
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        )),
                  ),
                  SizedBox(height: 60),
                  
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
