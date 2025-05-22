import '/aplicativo/componentes/card_tabelas/card_tabelas_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'configuracao_widget.dart' show ConfiguracaoWidget;
import 'package:flutter/material.dart';

class ConfiguracaoModel extends FlutterFlowModel<ConfiguracaoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for CardTabelas component.
  late CardTabelasModel cardTabelasModel1;
  // Model for CardTabelas component.
  late CardTabelasModel cardTabelasModel2;
  // Model for CardTabelas component.
  late CardTabelasModel cardTabelasModel3;
  // Model for CardTabelas component.
  late CardTabelasModel cardTabelasModel4;
  // Model for CardTabelas component.
  late CardTabelasModel cardTabelasModel5;
  // Model for CardTabelas component.
  late CardTabelasModel cardTabelasModel6;

  @override
  void initState(BuildContext context) {
    cardTabelasModel1 = createModel(context, () => CardTabelasModel());
    cardTabelasModel2 = createModel(context, () => CardTabelasModel());
    cardTabelasModel3 = createModel(context, () => CardTabelasModel());
    cardTabelasModel4 = createModel(context, () => CardTabelasModel());
    cardTabelasModel5 = createModel(context, () => CardTabelasModel());
    cardTabelasModel6 = createModel(context, () => CardTabelasModel());
  }

  @override
  void dispose() {
    cardTabelasModel1.dispose();
    cardTabelasModel2.dispose();
    cardTabelasModel3.dispose();
    cardTabelasModel4.dispose();
    cardTabelasModel5.dispose();
    cardTabelasModel6.dispose();
  }
}
