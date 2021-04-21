import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cubtale_challenge/main.dart';
import 'package:cubtale_challenge/postCards.dart';
import 'package:cubtale_challenge/models/activity.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cubtale_challenge/utils/colors.dart';

class Data extends StatefulWidget {
  final Activity dataObject;
  Data(this.dataObject);

  @override
  _DataPage createState() => _DataPage();
}

class _DataPage extends State<Data> {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "DATAS",
                style: GoogleFonts.raleway(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textColor,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          backgroundColor: AppColors.tabColor,
        ),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 80, horizontal: 30),
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: AppColors.tabColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            children:<Widget> [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          widget.dataObject.time,
                          style: GoogleFonts.raleway(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            color: AppColors.textColor,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.supervised_user_circle,
                          color: widget.dataObject.hue,
                          size: 60,
                        ),
                      ],
                    ),
                  ],
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    widget.dataObject.name,
                    style: GoogleFonts.raleway(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: widget.dataObject.hue,
                    ),
                  ),
                  Text(
                    " - ",
                    style: GoogleFonts.raleway(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: widget.dataObject.hue,
                    ),
                  ),
                  Text(
                    widget.dataObject.work,
                    style: GoogleFonts.raleway(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: widget.dataObject.hue,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 130,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "THE DATA",
                    style: GoogleFonts.raleway(
                      fontSize: 50,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 120,),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Return',
                          style: GoogleFonts.raleway(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: AppColors.textColor,
                          ),
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                        backgroundColor: widget.dataObject.hue,
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),

        ),
      ),
    );


    }
  }