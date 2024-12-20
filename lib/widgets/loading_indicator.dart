import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

KloadindIndicator() {
  return const SizedBox(
    height: 30,
    width: 50,
    child: LoadingIndicator(
        indicatorType: Indicator.ballPulse,
    
        /// Required, The loading type of the widget
        colors: [Colors.white],
    
        /// Optional, The color collections
        strokeWidth: 2,
    
        /// Optional, The stroke of the line, only applicable to widget which contains line   /// Optional, Background of the widget
        pathBackgroundColor: Colors.black
    
        /// Optional, the stroke backgroundColor
        ),
  );
}
