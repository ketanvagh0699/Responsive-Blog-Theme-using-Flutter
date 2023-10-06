import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news/screens/main/components/app_button_widget.dart';

import '../../constants.dart';

class InternetError {
  static final _instance = InternetError.internal();
  factory InternetError() => _instance;
  InternetError.internal();

  static OverlayEntry? entry;

  void show(context, page) => addOverlayEntry(context);
  void hide() => removeOverlay();

  bool get isShow => entry != null;

  addOverlayEntry(context) {
    if (entry != null) return;
    entry = OverlayEntry(
      builder: (BuildContext context) {
        return LayoutBuilder(
          builder: (_, BoxConstraints constraints) {
            return Material(
              color: appBlackColor,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Image.asset(AppAsset.nointernet),
                      const Icon(
                        Icons.signal_wifi_bad_outlined,
                        size: 25.0,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Text(
                        "No internet connection",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color:
                              Theme.of(context).textTheme.displayLarge!.color,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Please check your keyword or try again your browsing keyword",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color:
                              Theme.of(context).textTheme.displayLarge!.color,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      AppButtonWidget(
                        text: "Try again",
                        onPressed: () {
                          removeOverlay();
                        },
                        backgroundColor: appPrimaryDark,
                        borderSideColor: appPrimaryDark,
                        textColor: whiteColor,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 60,
                          width: Get.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: primaryBlack),
                          ),
                          child: Center(
                            child: Text(
                              "Check your network",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .color,
                              ),
                            ),
                          ),
                        ),
                      ),

                      //   Center(
                      // child: Column(
                      //   crossAxisAlignment: CrossAxisAlignment.center,
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     Image.asset(
                      //       'assets/gif/no-internet.gif',
                      //       height: 250,
                      //     ),
                      //     const SizedBox(
                      //       height: 50,
                      //     ),
                      //     const Text(
                      //       "Please check your internet connection!",
                      //       style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      //     ),
                      //     const SizedBox(
                      //       height: 20,
                      //     ),
                      //     SizedBox(
                      //       // decoration: BoxDecoration(
                      //       //   borderRadius: BorderRadius.circular(50),
                      //       // ),
                      //       height: 50,
                      //       width: 200,
                      //       child: TextButton(
                      //         style: TextButton.styleFrom(
                      //           backgroundColor: Colors.black.withOpacity(0.1),
                      //           shape: RoundedRectangleBorder(
                      //             borderRadius: BorderRadius.circular(50.0),
                      //           ),
                      //         ),
                      //         onPressed: () {
                      //           removeOverlay();
                      //         },
                      //         child: const Text(
                      //           "Okay",
                      //           style:
                      //               TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      //         ),
                      //       ),
                      //     ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );

    addOverlay(entry!, context);
  }

  addOverlay(OverlayEntry entry, context) async {
    Overlay.of(context).insert(entry);
  }

  removeOverlay() {
    entry?.remove();
    entry = null;
  }
}
