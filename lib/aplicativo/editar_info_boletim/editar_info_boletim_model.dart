import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'editar_info_boletim_widget.dart' show EditarInfoBoletimWidget;
import 'package:flutter/material.dart';

class EditarInfoBoletimModel extends FlutterFlowModel<EditarInfoBoletimWidget> {
  ///  Local state fields for this page.

  ModelResultStruct? validacaoBoletim;
  void updateValidacaoBoletimStruct(Function(ModelResultStruct) updateFn) {
    updateFn(validacaoBoletim ??= ModelResultStruct());
  }

  ///  State fields for stateful widgets in this page.

  DateTime? datePicked;
  // State field(s) for ddCliente widget.
  String? ddClienteValue;
  FormFieldController<String>? ddClienteValueController;
  // State field(s) for ddProjeto widget.
  String? ddProjetoValue;
  FormFieldController<String>? ddProjetoValueController;
  // State field(s) for ddAlvo widget.
  String? ddAlvoValue;
  FormFieldController<String>? ddAlvoValueController;
  // State field(s) for ddSonda widget.
  String? ddSondaValue;
  FormFieldController<String>? ddSondaValueController;
  // State field(s) for txtInclinacao widget.
  FocusNode? txtInclinacaoFocusNode;
  TextEditingController? txtInclinacaoTextController;
  String? Function(BuildContext, String?)? txtInclinacaoTextControllerValidator;
  // State field(s) for txtAzimute widget.
  FocusNode? txtAzimuteFocusNode;
  TextEditingController? txtAzimuteTextController;
  String? Function(BuildContext, String?)? txtAzimuteTextControllerValidator;
  // State field(s) for ddTurno widget.
  String? ddTurnoValue;
  FormFieldController<String>? ddTurnoValueController;
  // State field(s) for txtHorimetroInicial widget.
  FocusNode? txtHorimetroInicialFocusNode;
  TextEditingController? txtHorimetroInicialTextController;
  String? Function(BuildContext, String?)?
      txtHorimetroInicialTextControllerValidator;
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
    txtInclinacaoFocusNode?.dispose();
    txtInclinacaoTextController?.dispose();

    txtAzimuteFocusNode?.dispose();
    txtAzimuteTextController?.dispose();

    txtHorimetroInicialFocusNode?.dispose();
    txtHorimetroInicialTextController?.dispose();
  }
}
