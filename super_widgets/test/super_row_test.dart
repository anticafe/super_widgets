import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:super_widgets/super_row.dart';

void main() {
  testWidgets('SuperRow structure & default child value', (WidgetTester tester) async {
    final superRow = SuperRow();
    await tester.pumpWidget(Directionality(
      child: superRow,
      textDirection: TextDirection.ltr,
    ));

    // Should have 1 Row inside SuperRow
    final stackFinder = find.byType(Row);
    expect(stackFinder, findsOneWidget);

    final Row row = tester.widget(stackFinder);
    expect(row.key, isNull);
    expect(row.children, equals(<Widget>[]));
    expect(row.mainAxisAlignment, equals(MainAxisAlignment.start));
    expect(row.mainAxisSize, equals(MainAxisSize.max));
    expect(row.crossAxisAlignment, equals(CrossAxisAlignment.center));
    expect(row.textDirection, isNull);
    expect(row.verticalDirection, equals(VerticalDirection.down));
    expect(row.textBaseline, isNull);
  });

  testWidgets('SuperRow full child value', (WidgetTester tester) async {
    final List<Widget> children = [
      Text('Text 1'),
      Text('Text 2'),
    ];
    final superRow = SuperRow(
      alignment: AlignmentDirectional.bottomStart,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(5),
      color: Colors.pink,
      width: 300,
      height: 250,
      childKey: Key('SuperRow'),
      children: children,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      textDirection: TextDirection.rtl,
      verticalDirection: VerticalDirection.up,
      textBaseline: TextBaseline.alphabetic,
    );
    // Since we don't choose MaterialApp as root, we must wrap child in a Directionality instead
    // https://stackoverflow.com/a/49689947/190309
    await tester.pumpWidget(Directionality(
      child: superRow,
      textDirection: TextDirection.ltr,
    ));

    final Finder stackFinder = find.byType(Row).first;
    final Row row = tester.widget(stackFinder);

    expect(row.key, equals(Key('SuperRow')));
    expect(row.children, equals(children));
    expect(row.mainAxisAlignment, equals(MainAxisAlignment.spaceAround));
    expect(row.mainAxisSize, equals(MainAxisSize.min));
    expect(row.crossAxisAlignment, equals(CrossAxisAlignment.stretch));
    expect(row.textDirection, equals(TextDirection.rtl));
    expect(row.verticalDirection, equals(VerticalDirection.up));
    expect(row.textBaseline, equals(TextBaseline.alphabetic));
  });
}
