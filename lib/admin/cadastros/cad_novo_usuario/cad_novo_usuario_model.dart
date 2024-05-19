import '/backend/api_requests/api_calls.dart';
import '/componentes/mn_lateral/mn_lateral_widget.dart';
import '/componentes/mn_superior/mn_superior_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'cad_novo_usuario_widget.dart' show CadNovoUsuarioWidget;
import 'package:flutter/material.dart';

class CadNovoUsuarioModel extends FlutterFlowModel<CadNovoUsuarioWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for mnLateral component.
  late MnLateralModel mnLateralModel;
  // Model for mnSuperior component.
  late MnSuperiorModel mnSuperiorModel;
  // State field(s) for txtNomeUsuario widget.
  FocusNode? txtNomeUsuarioFocusNode;
  TextEditingController? txtNomeUsuarioTextController;
  String? Function(BuildContext, String?)?
      txtNomeUsuarioTextControllerValidator;
  // State field(s) for txtEmail widget.
  FocusNode? txtEmailFocusNode;
  TextEditingController? txtEmailTextController;
  String? Function(BuildContext, String?)? txtEmailTextControllerValidator;
  // State field(s) for txtSenha widget.
  FocusNode? txtSenhaFocusNode;
  TextEditingController? txtSenhaTextController;
  late bool txtSenhaVisibility;
  String? Function(BuildContext, String?)? txtSenhaTextControllerValidator;
  // State field(s) for txtChaveJ widget.
  FocusNode? txtChaveJFocusNode;
  TextEditingController? txtChaveJTextController;
  String? Function(BuildContext, String?)? txtChaveJTextControllerValidator;
  // State field(s) for txtCPF widget.
  FocusNode? txtCPFFocusNode;
  TextEditingController? txtCPFTextController;
  String? Function(BuildContext, String?)? txtCPFTextControllerValidator;
  // State field(s) for dpdCargo widget.
  String? dpdCargoValue;
  FormFieldController<String>? dpdCargoValueController;
  // State field(s) for txtMetaMensal widget.
  FocusNode? txtMetaMensalFocusNode;
  TextEditingController? txtMetaMensalTextController;
  String? Function(BuildContext, String?)? txtMetaMensalTextControllerValidator;
  // State field(s) for dpdAgencia widget.
  String? dpdAgenciaValue;
  FormFieldController<String>? dpdAgenciaValueController;
  // State field(s) for dpdEquipe widget.
  String? dpdEquipeValue;
  FormFieldController<String>? dpdEquipeValueController;
  // Stores action output result for [Backend Call - API (Criar Usuario)] action in Button widget.
  ApiCallResponse? outCriarUsuario;

  @override
  void initState(BuildContext context) {
    mnLateralModel = createModel(context, () => MnLateralModel());
    mnSuperiorModel = createModel(context, () => MnSuperiorModel());
    txtSenhaVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    mnLateralModel.dispose();
    mnSuperiorModel.dispose();
    txtNomeUsuarioFocusNode?.dispose();
    txtNomeUsuarioTextController?.dispose();

    txtEmailFocusNode?.dispose();
    txtEmailTextController?.dispose();

    txtSenhaFocusNode?.dispose();
    txtSenhaTextController?.dispose();

    txtChaveJFocusNode?.dispose();
    txtChaveJTextController?.dispose();

    txtCPFFocusNode?.dispose();
    txtCPFTextController?.dispose();

    txtMetaMensalFocusNode?.dispose();
    txtMetaMensalTextController?.dispose();
  }
}
