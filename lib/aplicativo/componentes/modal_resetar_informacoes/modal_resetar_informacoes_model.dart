import '/flutter_flow/flutter_flow_util.dart';
import 'modal_resetar_informacoes_widget.dart'
    show ModalResetarInformacoesWidget;
import 'package:flutter/material.dart';

class ModalResetarInformacoesModel
    extends FlutterFlowModel<ModalResetarInformacoesWidget> {
  ///  Local state fields for this component.

  bool erroSenha = false;

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
