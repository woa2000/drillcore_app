import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'modal_edit_atividade_boletim_widget.dart'
    show ModalEditAtividadeBoletimWidget;
import 'package:flutter/material.dart';

class ModalEditAtividadeBoletimModel
    extends FlutterFlowModel<ModalEditAtividadeBoletimWidget> {
  ///  Local state fields for this component.

  AtividadeBoletimStruct? stAtividadeBoletim;
  void updateStAtividadeBoletimStruct(
      Function(AtividadeBoletimStruct) updateFn) {
    updateFn(stAtividadeBoletim ??= AtividadeBoletimStruct());
  }

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
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
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtDeFocusNode?.dispose();
    txtDeTextController?.dispose();

    txtAvancoFocusNode?.dispose();
    txtAvancoTextController?.dispose();

    txtRecuperacaoFocusNode?.dispose();
    txtRecuperacaoTextController?.dispose();

    txtNumCaixaFocusNode?.dispose();
    txtNumCaixaTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }
}
