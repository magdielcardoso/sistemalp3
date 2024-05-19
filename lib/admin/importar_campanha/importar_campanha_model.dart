import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/componentes/mn_lateral/mn_lateral_widget.dart';
import '/componentes/mn_superior/mn_superior_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'importar_campanha_widget.dart' show ImportarCampanhaWidget;
import 'package:flutter/material.dart';

class ImportarCampanhaModel extends FlutterFlowModel<ImportarCampanhaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for mnLateral component.
  late MnLateralModel mnLateralModel;
  // Model for mnSuperior component.
  late MnSuperiorModel mnSuperiorModel;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // Stores action output result for [Custom Action - csvFileToJson] action in Container widget.
  List<dynamic>? csvConvert;
  // Stores action output result for [Backend Call - API (AtualizarCampanhas)] action in Container widget.
  ApiCallResponse? apiAtualizarProducoes;
  // Stores action output result for [Backend Call - Insert Row] action in Container widget.
  CampanhasHistoricosRow? apiCampanhaHistorico;

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
