import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/componentes/mn_lateral/mn_lateral_widget.dart';
import '/componentes/mn_superior/mn_superior_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dashboard_agente_widget.dart' show DashboardAgenteWidget;
import 'package:flutter/material.dart';

class DashboardAgenteModel extends FlutterFlowModel<DashboardAgenteWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (RelatoriosComissoes)] action in DashboardAgente widget.
  ApiCallResponse? apiRelatoriosComissoes;
  // Stores action output result for [Backend Call - API (Porcentagem Produto Mais Vendido)] action in DashboardAgente widget.
  ApiCallResponse? apiPercentMaisVendido;
  // Stores action output result for [Backend Call - Query Rows] action in DashboardAgente widget.
  List<UsuariosRow>? apiUsuarios;
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
