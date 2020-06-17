import 'package:flutter/material.dart';


class TopBar extends StatelessWidget {
  const TopBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 200),
      child: Row(
        children: [
          Container(
            height: 90.0,
            width: 90.0,
            color: Colors.yellow,
            child: Center(
              child: Icon(
                Icons.lightbulb_outline,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            height: 90.0,
            width: 1220.0,
            color: Color(0xffED7161),
            child: Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 360.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Women',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  Text(
                    'Men',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  Text(
                    'Kids',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  Text(
                    'Sale',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 90.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Icon(
                    Icons.lock_outline,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
