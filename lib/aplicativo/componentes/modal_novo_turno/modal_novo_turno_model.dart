import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'modal_novo_turno_widget.dart' show ModalNovoTurnoWidget;
import 'package:flutter/material.dart';

class ModalNovoTurnoModel extends FlutterFlowModel<ModalNovoTurnoWidget> {
  ///  Local state fields for this component.

  AtividadeBoletimStruct? stAtividadeBoletim;
  void updateStAtividadeBoletimStruct(
      Function(AtividadeBoletimStruct) updateFn) {
    updateFn(stAtividadeBoletim ??= AtividadeBoletimStruct());
  }

  ModelResultStruct? validateBoletim;
  void updateValidateBoletimStruct(Function(ModelResultStruct) updateFn) {
    updateFn(validateBoletim ??= ModelResultStruct());
  }

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  DateTime? datePicked;
  // State field(s) for ddTurno widget.
  String? ddTurnoValue;
  FormFieldController<String>? ddTurnoValueController;
  // State field(s) for txtHorimetro widget.
  FocusNode? txtHorimetroFocusNode;
  TextEditingController? txtHorimetroTextController;
  String? Function(BuildContext, String?)? txtHorimetroTextControllerValidator;
  // State field(s) for ddSupervisor widget.
  String? ddSupervisorValue;
  FormFieldController<String>? ddSupervisorValueController;
  // State field(s) for ddOperador widget.
  String? ddOperadorValue;
  FormFieldController<String>? ddOperadorValueController;
  // State field(s) for ddAuxiliar widget.
  String? ddAuxiliarValue;
  FormFieldController<String>? ddAuxiliarValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtHorimetroFocusNode?.dispose();
    txtHorimetroTextController?.dispose();
  }
}
