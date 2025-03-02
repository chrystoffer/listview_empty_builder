import 'package:flutter/material.dart';

extension ListViewExtension on ListView {
  Widget emptyBuilder({required Widget Function() builder}) {
    final delegate = childrenDelegate;

    int itemCount = 0;

    if (delegate is SliverChildListDelegate) {
      itemCount = delegate.children.length;
    } else if (delegate is SliverChildBuilderDelegate) {
      itemCount = delegate.estimatedChildCount ?? 0;
    }

    return itemCount == 0 ? builder() : this;
  }
}
