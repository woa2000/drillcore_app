import '/aplicativo/componentes/header_boletim/header_boletim_widget.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'atividades_boletim_widget.dart' show AtividadesBoletimWidget;
import 'package:flutter/material.dart';

class AtividadesBoletimModel extends FlutterFlowModel<AtividadesBoletimWidget> {
  ///  Local state fields for this page.

  ModelResultStruct? validacaoAtividade;
  void updateValidacaoAtividadeStruct(Function(ModelResultStruct) updateFn) {
    updateFn(validacaoAtividade ??= ModelResultStruct());
  }

  double? deInicial;

  BoletimStruct? boletim;
  void updateBoletimStruct(Function(BoletimStruct) updateFn) {
    updateFn(boletim ??= BoletimStruct());
  }

  ///  State fields for stateful widgets in this page.

  // Model for headerBoletim component.
  late HeaderBoletimModel headerBoletimModel;
  // State field(s) for ddCodigo widget.
  String? ddCodigoValue;
  FormFieldController<String>? ddCodigoValueController;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for txtDe widget.
  FocusNode? txtDeFocusNode;
  TextEditingController? txtDeTextController;
  String? Function(BuildContext, String?)? txtDeTextControllerValidator;
  // State field(s) for txtAvanco widget.
  FocusNode? txtAvancoFocusNode;
  TextEditingController? txtAvancoTextController;
  String? Function(BuildContext, String?)? txtAvancoTextControllerValidator;
  // State field(s) for txtRecuperacao widget.
  FocusNode? txtRecuperacaoFocusNode;
  TextEditingController? txtRecuperacaoTextController;
  String? Function(BuildContext, String?)?
      txtRecuperacaoTextControllerValidator;
  // State field(s) for ddDiametro widget.
  String? ddDiametroValue;
  FormFieldController<String>? ddDiametroValueController;
  // State field(s) for ddLitologia widget.
  String? ddLitologiaValue;
  FormFieldController<String>? ddLitologiaValueController;
  // State field(s) for txtNumCaixa widget.
  FocusNode? txtNumCaixaFocusNode;
  TextEditingController? txtNumCaixaTextController;
  String? Function(BuildContext, String?)? txtNumCaixaTextControllerValidator;
  // State field(s) for ddDip widget.
  String? ddDipValue;
  FormFieldController<String>? ddDipValueController;
  // State field(s) for txtObservacao widget.
  FocusNode? txtObservacaoFocusNode;
  TextEditingController? txtObservacaoTextController;
  String? Function(BuildContext, String?)? txtObservacaoTextControllerValidator;

  @override
  void initState(BuildContext context) {
    headerBoletimModel = createModel(context, () => HeaderBoletimModel());
  }

  @override
  void dispose() {
    headerBoletimModel.dispose();
    txtDeFocusNode?.dispose();
    txtDeTextController?.dispose();

    txtAvancoFocusNode?.dispose();
    txtAvancoTextController?.dispose();

    txtRecuperacaoFocusNode?.dispose();
    txtRecuperacaoTextController?.dispose();

    txtNumCaixaFocusNode?.dispose();
    txtNumCaixaTextController?.dispose();

    txtObservacaoFocusNode?.dispose();
    txtObservacaoTextController?.dispose();
  }
}
