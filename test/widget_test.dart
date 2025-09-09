import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:movie_app/main.dart';

void main() {
  testWidgets('HomePage menampilkan judul film', (WidgetTester tester) async {
    // Build aplikasi
    await tester.pumpWidget(const MovieApp());

    // Cek apakah salah satu judul film ada
    expect(find.text('Home Alone'), findsOneWidget);
  });
}
