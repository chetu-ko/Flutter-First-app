import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/cubit/cubit/select_photo_cubit.dart';

Widget imageview(String imagepath, BuildContext context) {
  return Stack(
    children: [
      Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.red[500],
          ),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: FileImage(
              File(imagepath),
            ),
          ),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        child: Text(""),
      ),
      IconButton(
        icon: Icon(Icons.close),
        onPressed: () {
          BlocProvider.of<SelectPhotoCubit>(context)
              .emit(SelectPhotoInitial(photo: 'Not Selected'));
        },
      )
    ],
  );
}
