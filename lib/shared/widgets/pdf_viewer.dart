import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class PDFViewer extends StatefulWidget {
  final String path;
  const PDFViewer({
    super.key,
    required this.path,
  });

  @override
  State<PDFViewer> createState() => _PDFViewerState();
}

class _PDFViewerState extends State<PDFViewer> {
  final Completer<PDFViewController> _controller =
      Completer<PDFViewController>();
  int? pages = 0;
  int? currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return PDFView(
      filePath: widget.path,
      enableSwipe: true,
      swipeHorizontal: true,
      autoSpacing: false,
      pageFling: false,
      onRender: (_pages) {
        setState(() {
          pages = _pages;
          // isReady = true;
        });
      },
      onError: (error) {
        print(error.toString());
      },
      onPageError: (page, error) {
        print('$page: ${error.toString()}');
      },
      onViewCreated: (PDFViewController pdfViewController) {
        _controller.complete(pdfViewController);
      },
      // onPageChanged: (int page, int total) {
      //   print('page change: $page/$total');
      // },
    );
  }
}
