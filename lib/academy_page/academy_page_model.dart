import '/flutter_flow/flutter_flow_util.dart';
import 'academy_page_widget.dart' show AcademyPageWidget;
import 'package:flutter/material.dart';

class AcademyPageModel extends FlutterFlowModel<AcademyPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
