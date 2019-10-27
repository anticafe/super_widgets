import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// Wrap this [child] inside an [Align] widget
Widget safeAlign({
  @required AlignmentGeometry alignment,
  @required Widget child,
}) {
  Widget current = child;
  if (alignment != null) {
    current = Align(alignment: alignment, child: current);
  }

  return current;
}

/// Wrap this [child] inside an [Padding] widget
Widget safePadding({
  @required EdgeInsetsGeometry padding,
  @required Widget child,
}) {
  Widget current = child;
  if (padding != null) {
    current = Padding(padding: padding, child: current);
  }

  return current;
}

/// Wrap this [child] inside an [DecoratedBox] widget
Widget safeDecoratedBox({
  @required Decoration decoration,
  @required Widget child,
  DecorationPosition position = DecorationPosition.background,
}) {
  Widget current = child;
  if (decoration != null) {
    current = DecoratedBox(
      decoration: decoration,
      child: current,
      position: position,
    );
  }

  return current;
}

/// Wrap this [child] inside an [DecoratedBox] widget
Widget safeConstrainedBox({
  @required BoxConstraints constraints,
  @required Widget child,
}) {
  Widget current = child;
  if (constraints != null) {
    current = ConstrainedBox(constraints: constraints, child: current);
  }

  return current;
}

/// Wrap this [child] inside an [Transform] widget
Widget safeTransform({
  @required Matrix4 transform,
  @required Widget child,
}) {
  Widget current = child;
  if (transform != null) {
    current = Transform(transform: transform, child: current);
  }

  return current;
}

/// Wrap this [child] inside an [InkWell] widget
/// If enable InkWell but splashColor is null, then will use splashColor from
/// Theme instead
Widget safeInkWell({
  bool enableInkWell,
  Color splashColor,
  @required Widget child,
}) {
  Widget current = child;
  if (true == enableInkWell) {
    current = InkWell(splashColor: splashColor, child: current);
  }

  return current;
}

/// Wrap this [child] inside an DynamicSize widget.
///
/// dynamicSize: (string) is the dynamic size of the container.
/// Its default value is empty, or its value can be:
///
/// - wrap: will be wrapped inside a [Wrap] widget
/// - full: will be wrapped inside an [Expanded] widget
Widget safeFlex({
  int flex,
  @required Widget child,
}) {
  Widget current = child;
  if (flex != null) {
    if (flex >= 1) {
      current = Expanded(child: child, flex: flex);
    } else if (flex == 0) {
      current = Wrap(children: <Widget>[current]);
    }
  }

  return current;
}

/// Wrap this widget into a [GestureDetector] to allow [onPressed] and
/// [onLongPressed]
Widget safeOnPress({
  @required Widget child,
  VoidCallback onPressed,
  VoidCallback onLongPressed,
}) {
  if (onPressed != null || onLongPressed != null) {
    return GestureDetector(
      child: child,
      onTap: onPressed,
      onLongPress: onLongPressed,
    );
  }
  return child;
}
