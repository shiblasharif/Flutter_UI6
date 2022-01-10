import 'package:flutter/material.dart';

products(img, text, amount) {
  bool val = false;
  return Container(
    height: 140,
    margin: EdgeInsets.only(left: 15, right: 15, top: 15),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: Colors.white,
    ),
    child: Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                left: 8,
                top: 12,
              ),
              child: Image.asset(
                img,
                height: 80,
                width: 80,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 200,
                  margin: EdgeInsets.only(
                    top: 15,
                    left: 10,
                    bottom: 2,
                  ),
                  child: Text(
                    text,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[800],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, bottom: 3),
                  child: Text(
                    "100 piece",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[800],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, top: 2),
                  child: Text(
                    amount,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, top: 2),
                  child: Text(
                    "In stock",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.green,
                    ),
                  ),
                ),
              ],
            ),
            Flexible(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Icon(
                        Icons.more_vert,
                        size: 22,
                        color: Colors.grey[700],
                      ),
                    ),
                  ),
                  Switch(
                    value: true,
                    activeColor: Colors.blue,
                    onChanged: (bool) {},
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20,
            )
          ],
        ),
        Container(
          padding: EdgeInsets.only(
            left: 28,
            right: 28,
          ),
          child: Divider(
            color: Colors.grey,
            thickness: 1,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              child: Container(
                child: Icon(
                  Icons.share_outlined,
                  color: Colors.grey[700],
                  size: 25,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 5),
              child: Text(
                "Share Product",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[700],
                ),
              ),
            ),
          ],
        )
      ],
    ),
  );
}
