import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'modal_excluir_atividade_widget.dart' show ModalExcluirAtividadeWidget;
import 'package:flutter/material.dart';

class ModalExcluirAtividadeModel
    extends FlutterFlowModel<ModalExcluirAtividadeWidget> {
  ///  Local state fields for this component.

  AtividadeBoletimStruct? stAtividadeBoletim;
  void updateStAtividadeBoletimStruct(
      Function(AtividadeBoletimStruct) updateFn) {
    updateFn(stAtividadeBoletim ??= AtividadeBoletimStruct());
  }

  bool erroSenha = false;

  double? profundidadeFuro;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtSenha widget.
  FocusNode? txtSenhaFocusNode;
  TextEditingController? txtSenhaTextController;
  late bool txtSenhaVisibility;
  String? Function(BuildContext, String?)? txtSenhaTextControllerValidator;

  @override
  void initState(BuildContext context) {
    txtSenhaVisibility = false;
  }

  @override
  void dispose() {
    txtSenhaFocusNode?.dispose();
    txtSenhaTextController?.dispose();
  }
}
