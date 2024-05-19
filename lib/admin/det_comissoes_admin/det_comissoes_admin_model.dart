import '/backend/supabase/supabase.dart';
import '/componentes/mn_lateral/mn_lateral_widget.dart';
import '/componentes/mn_superior/mn_superior_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'det_comissoes_admin_widget.dart' show DetComissoesAdminWidget;
import 'package:flutter/material.dart';

class DetComissoesAdminModel extends FlutterFlowModel<DetComissoesAdminWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for mnLateral component.
  late MnLateralModel mnLateralModel;
  // Model for mnSuperior component.
  late MnSuperiorModel mnSuperiorModel;
  // State field(s) for txtChaveJ widget.
  FocusNode? txtChaveJFocusNode;
  TextEditingController? txtChaveJTextController;
  String? Function(BuildContext, String?)? txtChaveJTextControllerValidator;
  // State field(s) for txtNomeAgente widget.
  FocusNode? txtNomeAgenteFocusNode;
  TextEditingController? txtNomeAgenteTextController;
  String? Function(BuildContext, String?)? txtNomeAgenteTextControllerValidator;
  // State field(s) for txtValorFinLiqd widget.
  FocusNode? txtValorFinLiqdFocusNode;
  TextEditingController? txtValorFinLiqdTextController;
  String? Function(BuildContext, String?)?
      txtValorFinLiqdTextControllerValidator;
  // State field(s) for txtProposta widget.
  FocusNode? txtPropostaFocusNode;
  TextEditingController? txtPropostaTextController;
  String? Function(BuildContext, String?)? txtPropostaTextControllerValidator;
  // State field(s) for txtTaxaJuros widget.
  FocusNode? txtTaxaJurosFocusNode;
  TextEditingController? txtTaxaJurosTextController;
  String? Function(BuildContext, String?)? txtTaxaJurosTextControllerValidator;
  // State field(s) for txtParcelas widget.
  FocusNode? txtParcelasFocusNode;
  TextEditingController? txtParcelasTextController;
  String? Function(BuildContext, String?)? txtParcelasTextControllerValidator;
  // State field(s) for txtValorFinanc widget.
  FocusNode? txtValorFinancFocusNode;
  TextEditingController? txtValorFinancTextController;
  String? Function(BuildContext, String?)?
      txtValorFinancTextControllerValidator;
  // State field(s) for txtEquipeColab widget.
  FocusNode? txtEquipeColabFocusNode;
  TextEditingController? txtEquipeColabTextController;
  String? Function(BuildContext, String?)?
      txtEquipeColabTextControllerValidator;
  // State field(s) for txtFuncao widget.
  FocusNode? txtFuncaoFocusNode;
  TextEditingController? txtFuncaoTextController;
  String? Function(BuildContext, String?)? txtFuncaoTextControllerValidator;
  // State field(s) for txtTaxaComissao widget.
  FocusNode? txtTaxaComissaoFocusNode;
  TextEditingController? txtTaxaComissaoTextController;
  String? Function(BuildContext, String?)?
      txtTaxaComissaoTextControllerValidator;
  // State field(s) for txtValorCOmissao widget.
  FocusNode? txtValorCOmissaoFocusNode;
  TextEditingController? txtValorCOmissaoTextController;
  String? Function(BuildContext, String?)?
      txtValorCOmissaoTextControllerValidator;
  // State field(s) for txtTipoLocal widget.
  FocusNode? txtTipoLocalFocusNode;
  TextEditingController? txtTipoLocalTextController;
  String? Function(BuildContext, String?)? txtTipoLocalTextControllerValidator;
  // State field(s) for txtIDProduto widget.
  FocusNode? txtIDProdutoFocusNode;
  TextEditingController? txtIDProdutoTextController;
  String? Function(BuildContext, String?)? txtIDProdutoTextControllerValidator;
  // State field(s) for txtIdConvenio widget.
  FocusNode? txtIdConvenioFocusNode;
  TextEditingController? txtIdConvenioTextController;
  String? Function(BuildContext, String?)? txtIdConvenioTextControllerValidator;
  // State field(s) for txtCPFCliente widget.
  FocusNode? txtCPFClienteFocusNode;
  TextEditingController? txtCPFClienteTextController;
  String? Function(BuildContext, String?)? txtCPFClienteTextControllerValidator;
  // State field(s) for txtNomeCLiente widget.
  FocusNode? txtNomeCLienteFocusNode;
  TextEditingController? txtNomeCLienteTextController;
  String? Function(BuildContext, String?)?
      txtNomeCLienteTextControllerValidator;
  // State field(s) for txtAgenciaCliente widget.
  FocusNode? txtAgenciaClienteFocusNode;
  TextEditingController? txtAgenciaClienteTextController;
  String? Function(BuildContext, String?)?
      txtAgenciaClienteTextControllerValidator;
  // Stores action output result for [Backend Call - Delete Row(s)] action in btnExcluir widget.
  List<ComissoesRow>? apiExcluirComissao;
  // Stores action output result for [Backend Call - Update Row(s)] action in btnAlterar widget.
  List<ComissoesRow>? apiUpdateComissao;

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
    txtChaveJFocusNode?.dispose();
    txtChaveJTextController?.dispose();

    txtNomeAgenteFocusNode?.dispose();
    txtNomeAgenteTextController?.dispose();

    txtValorFinLiqdFocusNode?.dispose();
    txtValorFinLiqdTextController?.dispose();

    txtPropostaFocusNode?.dispose();
    txtPropostaTextController?.dispose();

    txtTaxaJurosFocusNode?.dispose();
    txtTaxaJurosTextController?.dispose();

    txtParcelasFocusNode?.dispose();
    txtParcelasTextController?.dispose();

    txtValorFinancFocusNode?.dispose();
    txtValorFinancTextController?.dispose();

    txtEquipeColabFocusNode?.dispose();
    txtEquipeColabTextController?.dispose();

    txtFuncaoFocusNode?.dispose();
    txtFuncaoTextController?.dispose();

    txtTaxaComissaoFocusNode?.dispose();
    txtTaxaComissaoTextController?.dispose();

    txtValorCOmissaoFocusNode?.dispose();
    txtValorCOmissaoTextController?.dispose();

    txtTipoLocalFocusNode?.dispose();
    txtTipoLocalTextController?.dispose();

    txtIDProdutoFocusNode?.dispose();
    txtIDProdutoTextController?.dispose();

    txtIdConvenioFocusNode?.dispose();
    txtIdConvenioTextController?.dispose();

    txtCPFClienteFocusNode?.dispose();
    txtCPFClienteTextController?.dispose();

    txtNomeCLienteFocusNode?.dispose();
    txtNomeCLienteTextController?.dispose();

    txtAgenciaClienteFocusNode?.dispose();
    txtAgenciaClienteTextController?.dispose();
  }
}
