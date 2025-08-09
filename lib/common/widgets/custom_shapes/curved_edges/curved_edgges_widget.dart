import 'package:flutter/material.dart';

import 'curved_edges.dart';


class TCurvedEdgetWidget extends StatelessWidget {
  const TCurvedEdgetWidget({
    super.key, this.child,
  });
final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper:  TCustomCurvedEdges() ,
      child: child,
    );
  }
}
