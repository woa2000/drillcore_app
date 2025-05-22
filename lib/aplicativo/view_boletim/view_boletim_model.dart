import '/aplicativo/componentes/consolidado_perfuracao/consolidado_perfuracao_widget.dart';
import '/aplicativo/componentes/grupo_atividades/grupo_atividades_widget.dart';
import '/aplicativo/componentes/header_boletim/header_boletim_widget.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'view_boletim_widget.dart' show ViewBoletimWidget;
import 'package:flutter/material.dart';

class ViewBoletimModel extends FlutterFlowModel<ViewBoletimWidget> {
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
  // Model for consolidadoPerfuracao component.
  late ConsolidadoPerfuracaoModel consolidadoPerfuracaoModel;
  // Model for grupoAtividades component.
  late GrupoAtividadesModel grupoAtividadesModel1;
  // Model for grupoAtividades component.
  late GrupoAtividadesModel grupoAtividadesModel2;
  // Model for grupoAtividades component.
  late GrupoAtividadesModel grupoAtividadesModel3;

  @override
  void initState(BuildContext context) {
    headerBoletimModel = createModel(context, () => HeaderBoletimModel());
    consolidadoPerfuracaoModel =
        createModel(context, () => ConsolidadoPerfuracaoModel());
    grupoAtividadesModel1 = createModel(context, () => GrupoAtividadesModel());
    grupoAtividadesModel2 = createModel(context, () => GrupoAtividadesModel());
    grupoAtividadesModel3 = createModel(context, () => GrupoAtividadesModel());
  }

  @override
  void dispose() {
    headerBoletimModel.dispose();
    consolidadoPerfuracaoModel.dispose();
    grupoAtividadesModel1.dispose();
    grupoAtividadesModel2.dispose();
    grupoAtividadesModel3.dispose();
  }
}
