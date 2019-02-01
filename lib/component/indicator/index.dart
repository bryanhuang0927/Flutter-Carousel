import 'package:carosel/component/indicator/widget/bar_indicator.dart';
import 'package:carosel/component/indicator/widget/bubble_indicator.dart';
import 'package:carosel/component/indicator/widget/dot_indicator.dart';
import 'package:carosel/component/indicator/widget/props.dart';
import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  final int currentPage;
  final String indicatorName;
  final Color selectedColor;
  final Color unSelectedColor;
  final int totalPage;
  final double width;
  Props props;
  Widget indecatorWidget;
  Indicator(
      {this.currentPage,
      this.indicatorName,
      this.selectedColor,
      this.unSelectedColor,
      this.width,
      this.totalPage}) {
    props = Props(
      currentPage: currentPage,
      selectedColor: selectedColor,
      totalPage: this.totalPage,
      unSelectedColor: unSelectedColor,
      width: width,
    );
    indecatorWidget = getIndicator(indicatorName, props);
  }

  @override
  Widget build(BuildContext context) {
    return indecatorWidget;
  }
}

Widget getIndicator(String indicatorName, Props props) {
  Widget indicator;
  switch (indicatorName) {
    case "bar":
      {
        indicator = BarIndicator(
          props: props,
        );
      }
      break;
    case "bubble":
      {
        indicator = BubbleIndicator(
          props: props,
        );
      }
      break;
    case "dot":
      {
        indicator = DotIndicator(
          props: props,
        );
      }
      break;
  }
  return indicator;
}
