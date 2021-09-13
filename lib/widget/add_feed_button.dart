import 'package:flutter/material.dart';

Widget floatingActionButton(BuildContext context) {
  return FloatingActionButton(
    onPressed: () {
      showpassDialog(context);
      //Navigator.pushNamed(context, '/fifth');
    },
    child: Icon(
      Icons.add_photo_alternate,
      color: Colors.white,
    ),
  );
}

showpassDialog(BuildContext context) {
  TextEditingController password = TextEditingController();
  return showDialog(
    context: context,
    builder: (context) {
      return Center(
        child: Container(
          height: 180,
          width: 200,
          child: Material(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Authentication Check",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    controller: password,
                    decoration: InputDecoration(
                      hintText: "Enter code *****",
                      labelText: "Enter Password",
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Cancel"),
                    ),
                    TextButton(
                      onPressed: () {
                        if (password.text != "") {
                          if (password.text == "1234") {
                            showsnakcbar(
                                "Password Success", context, Colors.green);
                            Navigator.pop(context);
                            Navigator.pushNamed(context, '/fifth');
                          } else {
                            showsnakcbar(
                                "Password Not Matched", context, Colors.red);
                          }
                        }
                      },
                      child: Text("Check"),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      );
    },
  );
}

Widget showsnakcbar(String content, BuildContext context, Color color) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        content,
        style: TextStyle(
          color: color,
          fontSize: 20,
        ),
      ),
    ),
  );
}
