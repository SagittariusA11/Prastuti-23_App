import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../config/appTheme.dart';
import '../config/image_paths.dart';
import '../config/screen_config.dart';

class Utils{

  static flushBarMessage({String? message, BuildContext? context,Color? bgColor}){
    showFlushbar(
        context: context!,
        flushbar: Flushbar(
          message: message,
          forwardAnimationCurve: Curves.decelerate,
          margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          padding: const EdgeInsets.all(15),
          duration: const Duration(seconds: 3),
          backgroundColor: bgColor!,
          reverseAnimationCurve: Curves.easeInOut,
          positionOffset: 20,
          icon: const Icon(Icons.error,size: 28,color: Colors.white,),
          flushbarPosition: FlushbarPosition.TOP,
          borderRadius: BorderRadius.circular(10),
        )..show(context)
    );
  }
  Widget DialogBox(
      String title,
      String hint,
      String command,
      BuildContext context
      ){
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: SizeConfig.width*0.65,
            height: SizeConfig.height*0.12,
            decoration: BoxDecoration(
                color: selectedAppTheme.isDarkMode?
                Colors.black:Colors.grey,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    topLeft: Radius.circular(20.0)
                ),
                boxShadow: [BoxShadow(
                    color: selectedAppTheme.isDarkMode?
                    Colors.white.withOpacity(0.3):Colors.black.withOpacity(0.3),
                    blurRadius: 4.0,
                    spreadRadius: 3.0,
                    offset: Offset(4, 4)
                )]
            ),
          ),
          Container(
            width: SizeConfig.width*0.75,
            height: SizeConfig.height*0.31,
            decoration: BoxDecoration(
                color: selectedAppTheme.isDarkMode?
                Colors.black:Colors.white,
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [BoxShadow(
                    color: selectedAppTheme.isDarkMode?
                    Colors.white.withOpacity(0.3):Colors.black.withOpacity(0.3),
                    blurRadius: 4.0,
                    spreadRadius: 3.0,
                    offset: Offset(4, 4)
                )]
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(ImagePaths.cancel_02),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                    ),
                  ],
                ),
                AutoSizeText(
                  title,
                  style: AppTheme().headText1.copyWith(
                      color: selectedAppTheme.isDarkMode?
                      Colors.white:Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Card(
                    elevation: 0,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50))
                        ),
                        hintText: hint,
                      ),
                      validator: (name) => name != null && name.isEmpty
                          ? 'You cannot leave this field empty!'
                          : null,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: SizeConfig.height*0.14,
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: selectedAppTheme.isDarkMode?
                            Colors.white:Colors.black
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                        // boxShadow: [BoxShadow(
                        //     color: Colors.black.withOpacity(0.3),
                        //     blurRadius: 4.0,
                        //     spreadRadius: 3.0,
                        //     offset: Offset(4, 4)
                        // )]
                      ),
                      child: TextButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  )
                              )
                          ),
                          child: Center(
                            child: Text(
                                command,
                                style: GoogleFonts.catamaran(
                                  color: selectedAppTheme.isDarkMode?
                                  Colors.white:Colors.black,
                                  fontWeight: FontWeight.bold,
                                )
                            ),
                          ),
                          onPressed: () {
                            /// TODO: Implement Add
                          }
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}