import 'package:flutter/material.dart';

class AppColumn extends StatelessWidget {
  final List<Widget> children;
  final MainAxisSize mainAxisSize;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final EdgeInsetsGeometry? padding;
  final bool shouldScroll;
  final bool centerContent;

  const AppColumn({
    super.key,
    required this.children,
    this.mainAxisSize = MainAxisSize.min,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.padding,
    this.shouldScroll = true,
    this.centerContent = true,
  });

  @override
  Widget build(BuildContext context) {
    Widget content = Container(
      constraints: BoxConstraints(maxWidth: 700),
      child: SafeArea(
        child: Padding(
          padding: padding ?? EdgeInsets.symmetric(horizontal: 15),
          child: shouldScroll
              ? SingleChildScrollView(
                  child: Column(
                    mainAxisSize: mainAxisSize,
                    mainAxisAlignment: mainAxisAlignment,
                    crossAxisAlignment: crossAxisAlignment,
                    children: children,
                  ),
                )
              : Column(
                  mainAxisSize: mainAxisSize,
                  mainAxisAlignment: mainAxisAlignment,
                  crossAxisAlignment: crossAxisAlignment,
                  children: children,
                ),
        ),
      ),
    );

    return centerContent ? Center(child: content) : content;
  }
}
