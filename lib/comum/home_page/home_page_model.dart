import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  DateTime? dataLocal;

  DateTime? dataNuvem;

  int? inc;

  List<DocumentReference> lstSupervisorFB = [];
  void addToLstSupervisorFB(DocumentReference item) =>
      lstSupervisorFB.add(item);
  void removeFromLstSupervisorFB(DocumentReference item) =>
      lstSupervisorFB.remove(item);
  void removeAtIndexFromLstSupervisorFB(int index) =>
      lstSupervisorFB.removeAt(index);
  void insertAtIndexInLstSupervisorFB(int index, DocumentReference item) =>
      lstSupervisorFB.insert(index, item);
  void updateLstSupervisorFBAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      lstSupervisorFB[index] = updateFn(lstSupervisorFB[index]);

  List<DocumentReference> lstOperadorFB = [];
  void addToLstOperadorFB(DocumentReference item) => lstOperadorFB.add(item);
  void removeFromLstOperadorFB(DocumentReference item) =>
      lstOperadorFB.remove(item);
  void removeAtIndexFromLstOperadorFB(int index) =>
      lstOperadorFB.removeAt(index);
  void insertAtIndexInLstOperadorFB(int index, DocumentReference item) =>
      lstOperadorFB.insert(index, item);
  void updateLstOperadorFBAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      lstOperadorFB[index] = updateFn(lstOperadorFB[index]);

  List<DocumentReference> lstAuxiliarFB = [];
  void addToLstAuxiliarFB(DocumentReference item) => lstAuxiliarFB.add(item);
  void removeFromLstAuxiliarFB(DocumentReference item) =>
      lstAuxiliarFB.remove(item);
  void removeAtIndexFromLstAuxiliarFB(int index) =>
      lstAuxiliarFB.removeAt(index);
  void insertAtIndexInLstAuxiliarFB(int index, DocumentReference item) =>
      lstAuxiliarFB.insert(index, item);
  void updateLstAuxiliarFBAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      lstAuxiliarFB[index] = updateFn(lstAuxiliarFB[index]);

  int? incEquipe;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - dataNula] action in HomePage widget.
  DateTime? dataNula;
  // Stores action output result for [Custom Action - checkInternetConnection] action in HomePage widget.
  bool? comInternet;
  // Stores action output result for [Firestore Query - Query a collection] action in HomePage widget.
  List<ClientesRecord>? clientesFB;
  // Stores action output result for [Firestore Query - Query a collection] action in HomePage widget.
  List<ProjetoRecord>? projetosFB;
  // Stores action output result for [Firestore Query - Query a collection] action in HomePage widget.
  List<AlvoRecord>? alvosFB;
  // Stores action output result for [Firestore Query - Query a collection] action in HomePage widget.
  List<SondaRecord>? sondaFB;
  // Stores action output result for [Firestore Query - Query a collection] action in HomePage widget.
  List<FuroRecord>? lstFuro;
  // Stores action output result for [Firestore Query - Query a collection] action in HomePage widget.
  List<TurnoRecord>? lstTurnoFB;
  // Stores action output result for [Firestore Query - Query a collection] action in HomePage widget.
  List<EquipeRecord>? lstEquipe;
  // Stores action output result for [Firestore Query - Query a collection] action in HomePage widget.
  List<EquipeProjetoRecord>? lstEquipeProjeto;
  // Stores action output result for [Firestore Query - Query a collection] action in HomePage widget.
  List<AtividadeRecord>? lstAtividade;
  // Stores action output result for [Firestore Query - Query a collection] action in HomePage widget.
  List<DiametroRecord>? lstDiametroFB;
  // Stores action output result for [Firestore Query - Query a collection] action in HomePage widget.
  List<ConsistenciaRecord>? lstConsistenciaFB;
  // Stores action output result for [Firestore Query - Query a collection] action in HomePage widget.
  List<OrientacaoRecord>? lstOrientacaoFB;
  // Stores action output result for [Firestore Query - Query a collection] action in HomePage widget.
  ParametrosRecord? parametroFB;
  // Stores action output result for [Firestore Query - Query a collection] action in HomePage widget.
  List<BoletimRecord>? lstBoletinsFB;
  // Stores action output result for [Firestore Query - Query a collection] action in HomePage widget.
  List<AtividadeBoletimRecord>? lstAtividadeBoletimFB;
  // Stores action output result for [Firestore Query - Query a collection] action in HomePage widget.
  List<FuroBoletimRecord>? lstFuroBoletimFB;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
