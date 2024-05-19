import '/flutter_flow/flutter_flow_util.dart';
import 'mn_superior_widget.dart' show MnSuperiorWidget;
import 'package:flutter/material.dart';

class MnSuperiorModel extends FlutterFlowModel<MnSuperiorWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for cxBusca widget.
  FocusNode? cxBuscaFocusNode;
  TextEditingController? cxBuscaTextController;
  String? Function(BuildContext, String?)? cxBuscaTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    cxBuscaFocusNode?.dispose();
    cxBuscaTextController?.dispose();
  }
}
