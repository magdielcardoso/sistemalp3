import '/backend/supabase/supabase.dart';
import '/componentes/mn_lateral/mn_lateral_widget.dart';
import '/componentes/mn_superior/mn_superior_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cad_data_comissoes_widget.dart' show CadDataComissoesWidget;
import 'package:flutter/material.dart';

class CadDataComissoesModel extends FlutterFlowModel<CadDataComissoesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for mnLateral component.
  late MnLateralModel mnLateralModel;
  // Model for mnSuperior component.
  late MnSuperiorModel mnSuperiorModel;
  // State field(s) for dataInicial widget.
  DateTimeRange? dataInicialSelectedDay;
  // State field(s) for dataFinal widget.
  DateTimeRange? dataFinalSelectedDay;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  CalendarioPagamentosRow? retornoCriarData;

  @override
  void initState(BuildContext context) {
    mnLateralModel = createModel(context, () => MnLateralModel());
    mnSuperiorModel = createModel(context, () => MnSuperiorModel());
    dataInicialSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    dataFinalSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    mnLateralModel.dispose();
    mnSuperiorModel.dispose();
  }
}
