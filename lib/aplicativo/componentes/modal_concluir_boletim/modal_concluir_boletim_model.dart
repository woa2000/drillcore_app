import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'modal_concluir_boletim_widget.dart' show ModalConcluirBoletimWidget;
import 'package:flutter/material.dart';

class ModalConcluirBoletimModel
    extends FlutterFlowModel<ModalConcluirBoletimWidget> {
  ///  Local state fields for this component.

  AtividadeBoletimStruct? stAtividadeBoletim;
  void updateStAtividadeBoletimStruct(
      Function(AtividadeBoletimStruct) updateFn) {
    updateFn(stAtividadeBoletim ??= AtividadeBoletimStruct());
  }

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtHorimetroInicial widget.
  FocusNode? txtHorimetroInicialFocusNode;
  TextEditingController? txtHorimetroInicialTextController;
  String? Function(BuildContext, String?)?
      txtHorimetroInicialTextControllerValidator;
  // State field(s) for txtHorimetroFinal widget.
  FocusNode? txtHorimetroFinalFocusNode;
  TextEditingController? txtHorimetroFinalTextController;
  String? Function(BuildContext, String?)?
      txtHorimetroFinalTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtHorimetroInicialFocusNode?.dispose();
    txtHorimetroInicialTextController?.dispose();

    txtHorimetroFinalFocusNode?.dispose();
    txtHorimetroFinalTextController?.dispose();
  }
}
