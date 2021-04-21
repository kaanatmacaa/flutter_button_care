import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'models/activity.dart';
import 'utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'routes/data.dart';

class PostCard extends StatelessWidget {
  final Activity activity;
  PostCard({ this.activity});

  @override
  Widget build(BuildContext context) {
       return InkWell(
          onTap: (){
            print("clicked");
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Data(activity)));
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(18.0),
                topLeft: Radius.circular(18.0),
              ),
              color: AppColors.tabColor,
            ),
            width: 140.0,
            height: 60,
            child: Container(
             margin: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 3.0),
             padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 3.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:<Widget> [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                          activity.time,
                        style: GoogleFonts.raleway(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: AppColors.textColor,
                        ),
                      ),
                      Icon(
                        Icons.supervised_user_circle,
                        color: activity.hue,
                      ),
                    ],
                  ),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                          activity.name,
                        style: GoogleFonts.raleway(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: activity.hue,
                        ),
                      ),
                      Text(
                        " - ",
                        style: GoogleFonts.raleway(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: activity.hue,
                        ),
                      ),
                      Text(
                          activity.work,
                        style: GoogleFonts.raleway(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: activity.hue,
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
