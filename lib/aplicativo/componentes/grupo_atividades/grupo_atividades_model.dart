import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'grupo_atividades_widget.dart' show GrupoAtividadesWidget;
import 'package:flutter/material.dart';

class GrupoAtividadesModel extends FlutterFlowModel<GrupoAtividadesWidget> {
  ///  Local state fields for this component.

  List<AtividadeBoletimStruct> atividadesGrupo = [];
  void addToAtividadesGrupo(AtividadeBoletimStruct item) =>
      atividadesGrupo.add(item);
  void removeFromAtividadesGrupo(AtividadeBoletimStruct item) =>
      atividadesGrupo.remove(item);
  void removeAtIndexFromAtividadesGrupo(int index) =>
      atividadesGrupo.removeAt(index);
  void insertAtIndexInAtividadesGrupo(int index, AtividadeBoletimStruct item) =>
      atividadesGrupo.insert(index, item);
  void updateAtividadesGrupoAtIndex(
          int index, Function(AtividadeBoletimStruct) updateFn) =>
      atividadesGrupo[index] = updateFn(atividadesGrupo[index]);

  String duracao = '00:00';

  int? duracaoMinutosGrupo;

  List<AtividadeStruct> atividadesTipo = [];
  void addToAtividadesTipo(AtividadeStruct item) => atividadesTipo.add(item);
  void removeFromAtividadesTipo(AtividadeStruct item) =>
      atividadesTipo.remove(item);
  void removeAtIndexFromAtividadesTipo(int index) =>
      atividadesTipo.removeAt(index);
  void insertAtIndexInAtividadesTipo(int index, AtividadeStruct item) =>
      atividadesTipo.insert(index, item);
  void updateAtividadesTipoAtIndex(
          int index, Function(AtividadeStruct) updateFn) =>
      atividadesTipo[index] = updateFn(atividadesTipo[index]);

  int? duracaoMinutosTotal;

  double? percentual;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
