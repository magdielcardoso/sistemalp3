import '/componentes/mn_lateral/mn_lateral_widget.dart';
import '/componentes/mn_superior/mn_superior_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'minhas_comissoes_widget.dart' show MinhasComissoesWidget;
import 'package:flutter/material.dart';

class MinhasComissoesModel extends FlutterFlowModel<MinhasComissoesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
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
