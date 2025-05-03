import '/all_component/appbar/appbar_widget.dart';
import '/all_component/search_empty/search_empty_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'search_page_widget.dart' show SearchPageWidget;
import 'package:flutter/material.dart';

class SearchPageModel extends FlutterFlowModel<SearchPageWidget> {
  ///  Local state fields for this page.

  bool rselected = false;

  ///  State fields for stateful widgets in this page.

  // Model for Appbar component.
  late AppbarModel appbarModel;
  // Model for SearchEmpty component.
  late SearchEmptyModel searchEmptyModel;

  @override
  void initState(BuildContext context) {
    appbarModel = createModel(context, () => AppbarModel());
    searchEmptyModel = createModel(context, () => SearchEmptyModel());
  }

  @override
  void dispose() {
    appbarModel.dispose();
    searchEmptyModel.dispose();
  }
}
