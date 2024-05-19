import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/componentes/mn_lateral/mn_lateral_widget.dart';
import '/componentes/mn_superior/mn_superior_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'meu_perfil_widget.dart' show MeuPerfilWidget;
import 'package:flutter/material.dart';

class MeuPerfilModel extends FlutterFlowModel<MeuPerfilWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (ComissoesVitalicios)] action in MeuPerfil widget.
  ApiCallResponse? apiComissoesVitalicios;
  // Stores action output result for [Backend Call - API (ProducoesVitalicios)] action in MeuPerfil widget.
  ApiCallResponse? apiProducoesVitalicios;
  // Model for mnLateral component.
  late MnLateralModel mnLateralModel;
  // Model for mnSuperior component.
  late MnSuperiorModel mnSuperiorModel;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // Stores action output result for [Backend Call - Update Row(s)] action in Image widget.
  List<UsuariosRow>? apiAtualizarFoto;

  @override
  void initState(BuildContext context) {
    mnLateralModel = createModel(context, () => MnLateralModel());
    mnSuperiorModel = createModel(context, () => MnSuperiorModel());
  }

  @override
  void dispose() {
    mnLateralModel.dispose();
    mnSuperiorModel.dispose();
  }
}
