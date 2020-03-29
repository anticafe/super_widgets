import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../base/base_container.dart';

/// [SuperListView] is a [Container] with [ListView] inside.
class SuperListView extends BaseContainer {
  /// Create new [SuperListView] which has a [Container] (parent) with
  /// a [ListView] (child) inside.
  /// Thus its params is the combination of [Container]'s
  /// params and [ListView]'s  params.
  ///
  /// <b>Params of the parent widget is:</b>
  ///
  /// - `key` : key of parent widget.
  /// - `alignment`: Align the [Container] within this widget. Defaults to
  /// [AlignmentDirectional.topStart].
  /// - `padding`: padding between this widget vs. the [Container] inside.
  /// - `margin`: margin between this widget vs. its parent.
  /// - `color` and `decoration`: only one params is valid. It's the
  /// decoration to paint behind the [Container].
  /// - `foregroundDecoration`: the decoration to paint in front of the [Container].
  /// - `width` and `height` values include the padding. It can be a double
  /// value like 100.0, or [double.infinity], or null, like the size value of
  /// [Container]
  /// - `constraints`: like [BoxConstraints] of [Container].
  /// - `transform`: the transformation matrix to apply before painting the parent.
  /// - `flex`: same as `flex` value which is used in [Flexible].
  ///  - If flex=0: this widget will be wrapped inside a [Wrap] widget.
  ///  - If flex>0: this widget will be wrapped inside a [Expanded] with flex value.
  ///  - Default flex is null, it means just return this widget.
  /// - `ignoreImplicitWidthHeight`: default is `true`. As we know, `width` and
  /// `height` of `child` might depends on `alignment` or its parent's size.
  /// But in some cases we need its size is exactly wrap its `child`, for
  /// example the container of [Text] wrap the size of [Text] instead of
  /// expanding to full width. Note: if we specify `width` or `height` then
  /// [ignoreImplicitWidthHeight] will be set to false.
  ///
  /// <b>Params of the child widget is:</b>
  ///
  /// - `childKey`: [Key] of [ListView].
  /// - `children`: list of children of [ListView].
  /// - `scrollDirection`: the axis along which the scroll view scrolls.
  /// Defaults to [Axis.vertical].
  /// - `reverse` : Whether the scroll view scrolls in the reading direction.
  /// Defaults to false.
  /// [Container].
  /// - `controller`: An object that can be used to control the position to
  /// which this scroll view is scrolled.
  /// - `primary`: Whether this is the primary scroll view associated with the
  /// parent [PrimaryScrollController].
  /// - `physics`: How the scroll view should respond to user input. For
  /// example, determines how the scroll view continues to animate after the
  /// user stops dragging the scroll view. Defaults to matching platform
  /// conventions.
  /// - `shrinkWrap`: Whether the extent of the scroll view in the
  /// [scrollDirection] should be determined by the contents being viewed.
  /// Defaults to false.
  /// - `childPadding`: padding between the [ListView] vs. its children.
  /// - `itemExtent`: if non-null, forces the children to have the given extent
  /// in the scroll direction.
  /// - `addAutomaticKeepAlives`: Whether to wrap each child in an
  /// [AutomaticKeepAlive]. Defaults to true.
  /// - `addRepaintBoundaries`: Whether to wrap each child in a
  /// [RepaintBoundary]. Defaults to true.
  /// - `addSemanticIndexes`: Whether to wrap each child in an
  /// [IndexedSemantics]. Defaults to true.
  /// - `cacheExtent`: {@macro flutter.rendering.viewport.cacheExtent}
  /// - `semanticChildCount`: the number of children that will contribute
  /// semantic information.
  /// - `dragStartBehavior`: {@macro flutter.widgets.scrollable.dragStartBehavior}.
  /// Defaults to [DragStartBehavior.start].
  SuperListView({
    // Container key
    Key pKey,
    // Container position & size
    AlignmentGeometry pAlignment = AlignmentDirectional.topStart,
    Matrix4 pTransform,
    EdgeInsetsGeometry pMargin,
    double pMarginAllPx,
    EdgeInsetsGeometry pPadding,
    double pPaddingAllPx,
    double pWidth,
    double pHeight,
    int pFlex,
    BoxConstraints pConstraints,
    bool pIgnoreImplicitWidthHeight = false,
    // Container style
    Color pColor,
    Decoration pDecoration,
    Decoration pForegroundDecoration,
    // ListView key
    Key cKey,
    // ListView position & size
    EdgeInsetsGeometry cMargin,
    double cMarginAllPx,
    EdgeInsetsGeometry cPadding,
    double cPaddingAllPx,
    int cFlex,
    // ListView style
    Color cColor,
    Decoration cDecoration,
    Decoration cForegroundDecoration,
    // Style of Material widget
    MaterialType materialType,
    ShapeBorder materialShape,
    double materialElevation,
    Color materialColor,
    Color materialShadowColor,
    BorderRadiusGeometry materialBorderRadius,
    // Specific property of ListView
    Axis scrollDirection = Axis.vertical,
    bool reverse = false,
    ScrollController controller,
    bool primary,
    ScrollPhysics physics,
    bool shrinkWrap = false,
    EdgeInsetsGeometry childPadding,
    double itemExtent,
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,
    double cacheExtent,
    int semanticChildCount,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    // ListView children
    List<Widget> children,
  })  : assert(pIgnoreImplicitWidthHeight != null),
        assert(pAlignment != null),
        assert(dragStartBehavior != null),
        assert(scrollDirection != null),
        assert(reverse != null),
        assert(addAutomaticKeepAlives != null),
        assert(addRepaintBoundaries != null),
        assert(addRepaintBoundaries != null),
        assert(addSemanticIndexes != null),
        super(
          // Parent key
          key: pKey,
          // Parent position & size
          alignment: pAlignment,
          transform: pTransform,
          margin: pMargin,
          marginAllPx: pMarginAllPx,
          padding: pPadding,
          paddingAllPx: pPaddingAllPx,
          width: pWidth,
          height: pHeight,
          flex: pFlex,
          constraints: pConstraints,
          ignoreImplicitWidthHeight: pIgnoreImplicitWidthHeight,
          // Parent style
          color: pColor,
          decoration: pDecoration,
          foregroundDecoration: pForegroundDecoration,
          child: BaseContainer(
            // Child position & size
            margin: cMargin,
            marginAllPx: cMarginAllPx,
            padding: cPadding,
            paddingAllPx: cPaddingAllPx,
            flex: cFlex,
            // Child style
            color: cColor,
            decoration: cDecoration,
            foregroundDecoration: cForegroundDecoration,
            // Style of Material widget
            materialType: materialType,
            materialShape: materialShape,
            materialElevation: materialElevation,
            materialColor: materialColor,
            materialShadowColor: materialShadowColor,
            materialBorderRadius: materialBorderRadius,
            // Finally the child
            child: ListView(
              key: cKey,
              scrollDirection: scrollDirection,
              reverse: reverse,
              controller: controller,
              primary: primary,
              physics: physics,
              shrinkWrap: shrinkWrap,
              padding: childPadding,
              itemExtent: itemExtent,
              addAutomaticKeepAlives: addAutomaticKeepAlives,
              addRepaintBoundaries: addRepaintBoundaries,
              addSemanticIndexes: addSemanticIndexes,
              cacheExtent: cacheExtent,
              semanticChildCount: semanticChildCount ?? children.length,
              dragStartBehavior: dragStartBehavior,
              children: children,
            ),
          ),
        );

  /// Create new [SuperListView] which has a [Container] (parent) with
  /// a [ListView] (child) inside, with result is a scrollable, linear array
  /// of widgets that are created on demand.
  ///
  /// Thus its params is the combination of [Container]'s
  /// params and [ListView]'s  params.
  ///
  /// <b>Params of the parent widget is:</b>
  ///
  /// - `key` : key of parent widget.
  /// - `alignment`: Align the [Container] within this widget. Defaults to
  /// [AlignmentDirectional.topStart].
  /// - `padding`: padding between this widget vs. the [Container] inside.
  /// - `margin`: margin between this widget vs. its parent.
  /// - `margin`: margin between this widget vs. its parent.
  /// - `color` and `decoration`: only one params is valid. It's the
  /// decoration to paint behind the [Container].
  /// - `foregroundDecoration`: the decoration to paint in front of the [Container].
  /// - `width` and `height` values include the padding. It can be a double
  /// value like 100.0, or [double.infinity], or null, like the size value of
  /// [Container]
  /// - `constraints`: like [BoxConstraints] of [Container].
  /// - `transform`: the transformation matrix to apply before painting the parent.
  /// - `flex`: same as `flex` value which is used in [Flexible].
  ///  - If flex=0: this widget will be wrapped inside a [Wrap] widget.
  ///  - If flex>0: this widget will be wrapped inside a [Expanded] with flex value.
  ///  - Default flex is null, it means just return this widget.
  /// - `ignoreImplicitWidthHeight`: default is `true`. As we know, `width` and
  /// `height` of `child` might depends on `alignment` or its parent's size.
  /// But in some cases we need its size is exactly wrap its `child`, for
  /// example the container of [Text] wrap the size of [Text] instead of
  /// expanding to full width. Note: if we specify `width` or `height` then
  /// [ignoreImplicitWidthHeight] will be set to false.
  ///
  /// <b>Params of the child widget is:</b>
  ///
  /// - `childKey`: [Key] of [ListView].
  /// - `itemBuilder`: the builder to create list of children of [ListView].
  /// - `scrollDirection`: the axis along which the scroll view scrolls.
  /// Defaults to [Axis.vertical].
  /// - `reverse` : Whether the scroll view scrolls in the reading direction.
  /// Defaults to false.
  /// [Container].
  /// - `controller`: An object that can be used to control the position to
  /// which this scroll view is scrolled.
  /// - `primary`: Whether this is the primary scroll view associated with the
  /// parent [PrimaryScrollController].
  /// - `physics`: How the scroll view should respond to user input. For
  /// example, determines how the scroll view continues to animate after the
  /// user stops dragging the scroll view. Defaults to matching platform
  /// conventions.
  /// - `shrinkWrap`: Whether the extent of the scroll view in the
  /// [scrollDirection] should be determined by the contents being viewed.
  /// Defaults to false.
  /// - `childPadding`: padding between the [ListView] vs. its children.
  /// - `itemExtent`: if non-null, forces the children to have the given extent
  /// in the scroll direction.
  /// - `addAutomaticKeepAlives`: Whether to wrap each child in an
  /// [AutomaticKeepAlive]. Defaults to true.
  /// - `addRepaintBoundaries`: Whether to wrap each child in a
  /// [RepaintBoundary]. Defaults to true.
  /// - `addSemanticIndexes`: Whether to wrap each child in an
  /// [IndexedSemantics]. Defaults to true.
  /// - `cacheExtent`: {@macro flutter.rendering.viewport.cacheExtent}
  /// - `semanticChildCount`: the number of children that will contribute
  /// semantic information.
  /// - `dragStartBehavior`: {@macro flutter.widgets.scrollable.dragStartBehavior}.
  /// Defaults to [DragStartBehavior.start].
  SuperListView.builder({
    // Container key
    Key pKey,
    // Container position & size
    AlignmentGeometry pAlignment = AlignmentDirectional.topStart,
    Matrix4 pTransform,
    EdgeInsetsGeometry pMargin,
    double pMarginAllPx,
    EdgeInsetsGeometry pPadding,
    double pPaddingAllPx,
    double pWidth,
    double pHeight,
    int pFlex,
    BoxConstraints pConstraints,
    bool pIgnoreImplicitWidthHeight = false,
    // Container style
    Color pColor,
    Decoration pDecoration,
    Decoration pForegroundDecoration,
    // ListView key
    Key cKey,
    // ListView position & size
    EdgeInsetsGeometry cMargin,
    double cMarginAllPx,
    EdgeInsetsGeometry cPadding,
    double cPaddingAllPx,
    int cFlex,
    // ListView style
    Color cColor,
    Decoration cDecoration,
    Decoration cForegroundDecoration,
    // Style of Material widget
    MaterialType materialType,
    ShapeBorder materialShape,
    double materialElevation,
    Color materialColor,
    Color materialShadowColor,
    BorderRadiusGeometry materialBorderRadius,
    // Specific property of ListView
    Axis scrollDirection = Axis.vertical,
    bool reverse = false,
    ScrollController controller,
    bool primary,
    ScrollPhysics physics,
    bool shrinkWrap = false,
    EdgeInsetsGeometry childPadding,
    double itemExtent,
    int itemCount,
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,
    double cacheExtent,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    // ignore: always_put_required_named_parameters_first
    @required IndexedWidgetBuilder itemBuilder,
  })  : assert(pIgnoreImplicitWidthHeight != null),
        assert(pAlignment != null),
        assert(dragStartBehavior != null),
        assert(scrollDirection != null),
        assert(reverse != null),
        assert(addAutomaticKeepAlives != null),
        assert(addRepaintBoundaries != null),
        assert(addRepaintBoundaries != null),
        assert(addSemanticIndexes != null),
        super(
          // Parent key
          key: pKey,
          // Parent position & size
          alignment: pAlignment,
          transform: pTransform,
          margin: pMargin,
          marginAllPx: pMarginAllPx,
          padding: pPadding,
          paddingAllPx: pPaddingAllPx,
          width: pWidth,
          height: pHeight,
          flex: pFlex,
          constraints: pConstraints,
          ignoreImplicitWidthHeight: pIgnoreImplicitWidthHeight,
          // Parent style
          color: pColor,
          decoration: pDecoration,
          foregroundDecoration: pForegroundDecoration,
          child: BaseContainer(
            // Child position & size
            margin: cMargin,
            marginAllPx: cMarginAllPx,
            padding: cPadding,
            paddingAllPx: cPaddingAllPx,
            flex: cFlex,
            // Child style
            color: cColor,
            decoration: cDecoration,
            foregroundDecoration: cForegroundDecoration,
            // Style of Material widget
            materialType: materialType,
            materialShape: materialShape,
            materialElevation: materialElevation,
            materialColor: materialColor,
            materialShadowColor: materialShadowColor,
            materialBorderRadius: materialBorderRadius,
            // Finally the child
            child: ListView.builder(
              key: cKey,
              scrollDirection: scrollDirection,
              reverse: reverse,
              controller: controller,
              primary: primary,
              physics: physics,
              shrinkWrap: shrinkWrap,
              padding: childPadding,
              itemExtent: itemExtent,
              itemBuilder: itemBuilder,
              itemCount: itemCount,
              addAutomaticKeepAlives: addAutomaticKeepAlives,
              addRepaintBoundaries: addRepaintBoundaries,
              addSemanticIndexes: addSemanticIndexes,
              cacheExtent: cacheExtent,
              dragStartBehavior: dragStartBehavior,
            ),
          ),
        );
}
