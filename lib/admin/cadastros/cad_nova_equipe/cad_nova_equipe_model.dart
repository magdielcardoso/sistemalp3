import '/componentes/mn_lateral/mn_lateral_widget.dart';
import '/componentes/mn_superior/mn_superior_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'cad_nova_equipe_widget.dart' show CadNovaEquipeWidget;
import 'package:flutter/material.dart';

class CadNovaEquipeModel extends FlutterFlowModel<CadNovaEquipeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for mnLateral component.
  late MnLateralModel mnLateralModel;
  // Model for mnSuperior component.
  late MnSuperiorModel mnSuperiorModel;
  // State field(s) for NomeAgencia widget.
  FocusNode? nomeAgenciaFocusNode;
  TextEditingController? nomeAgenciaTextController;
  String? Function(BuildContext, String?)? nomeAgenciaTextControllerValidator;
  // State field(s) for dpdEstado widget.
  String? dpdEstadoValue;
  FormFieldController<String>? dpdEstadoValueController;
  // State field(s) for dpdCidade widget.
  String? dpdCidadeValue;
  FormFieldController<String>? dpdCidadeValueController;

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
    nomeAgenciaFocusNode?.dispose();
    nomeAgenciaTextController?.dispose();
  }
}
