import 'package:flutter/material.dart';

class ScrollManager {
  final ScrollController scrollController = ScrollController();

  void scrollToWidget(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(context,
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    }
  }
}
