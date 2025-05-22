import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'modal_novo_furo_widget.dart' show ModalNovoFuroWidget;
import 'package:flutter/material.dart';

class ModalNovoFuroModel extends FlutterFlowModel<ModalNovoFuroWidget> {
  ///  Local state fields for this component.

  AtividadeBoletimStruct? stAtividadeBoletim;
  void updateStAtividadeBoletimStruct(
      Function(AtividadeBoletimStruct) updateFn) {
    updateFn(stAtividadeBoletim ??= AtividadeBoletimStruct());
  }

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for ddFuro widget.
  String? ddFuroValue;
  FormFieldController<String>? ddFuroValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
