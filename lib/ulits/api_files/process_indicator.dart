import 'dart:ui';

import 'package:flutter/material.dart';

import '../../constants.dart';

import 'internet_error.dart';

class Circle {
  static final _instance = Circle.internal();
  factory Circle() => _instance;
  Circle.internal();

  static bool entry = false;
  static OverlayEntry viewEntry = OverlayEntry(builder: (BuildContext context) {
    return const ProcessIndicator();
  });

  InternetError internetError = InternetError();

  show(context) async {
    return addOverlayEntry(context);
  }

  void hide(context) => removeOverlay();

  bool get isShow => isShowNetworkOrCircle();

  bool isShowNetworkOrCircle() {
    return internetError.isShow || entry == true;
  }

  addOverlayEntry(context) async {
    if (entry == true) return;
    entry = true;
    return addOverlay(viewEntry, context);
  }

  addOverlay(OverlayEntry entry, context) async {
    try {
      return Overlay.of(context).insert(entry);
    } catch (e) {
      return Future.error(e);
    }
  }

  static removeOverlay() async {
    try {
      entry = false;
      if (viewEntry.mounted) {
        viewEntry.remove();
      }
      // viewEntry.remove();
    } catch (e) {
      return Future.error(e);
    }
  }
}

class ProcessIndicator extends StatelessWidget {
  const ProcessIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
      child: Material(
        color: Colors.black26,
        child: Center(
          child: Container(
            height: 60.0,
            width: 60.0,
            padding: const EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              // color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: const CircularProgressIndicator(
              strokeWidth: 4,
              color: darkGreenColor,
            ),
          ),
        ),
      ),
    );
  }
}
