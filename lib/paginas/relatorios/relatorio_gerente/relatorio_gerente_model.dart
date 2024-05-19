import '/backend/api_requests/api_calls.dart';
import '/componentes/mn_lateral/mn_lateral_widget.dart';
import '/componentes/mn_superior/mn_superior_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'relatorio_gerente_widget.dart' show RelatorioGerenteWidget;
import 'package:flutter/material.dart';

class RelatorioGerenteModel extends FlutterFlowModel<RelatorioGerenteWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (RelatoriosComissoes)] action in RelatorioGerente widget.
  ApiCallResponse? apiRelatoriosComissoes;
  // Stores action output result for [Backend Call - API (RelatoriosAdmin)] action in RelatorioGerente widget.
  ApiCallResponse? apiRelatoriosAdmin;
  // Model for mnLateral component.
  late MnLateralModel mnLateralModel;
  // Model for mnSuperior component.
  late MnSuperiorModel mnSuperiorModel;
  DateTime? datePicked1;
  DateTime? datePicked2;

  @override
  void initState(BuildContext context) {
    mnLateralModel = createModel(context, () => MnLateralModel());
    mnSuperiorModel = createModel(context, () => MnSuperiorModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    mnLateralModel.dispose();
    mnSuperiorModel.dispose();
  }
}
