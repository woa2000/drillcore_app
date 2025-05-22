import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/index.dart';
import 'lista_boletins_widget.dart' show ListaBoletinsWidget;
import 'package:flutter/material.dart';

class ListaBoletinsModel extends FlutterFlowModel<ListaBoletinsWidget> {
  ///  Local state fields for this page.

  List<FuroStruct> syncFuros = [];
  void addToSyncFuros(FuroStruct item) => syncFuros.add(item);
  void removeFromSyncFuros(FuroStruct item) => syncFuros.remove(item);
  void removeAtIndexFromSyncFuros(int index) => syncFuros.removeAt(index);
  void insertAtIndexInSyncFuros(int index, FuroStruct item) =>
      syncFuros.insert(index, item);
  void updateSyncFurosAtIndex(int index, Function(FuroStruct) updateFn) =>
      syncFuros[index] = updateFn(syncFuros[index]);

  List<BoletimStruct> syncBoletim = [];
  void addToSyncBoletim(BoletimStruct item) => syncBoletim.add(item);
  void removeFromSyncBoletim(BoletimStruct item) => syncBoletim.remove(item);
  void removeAtIndexFromSyncBoletim(int index) => syncBoletim.removeAt(index);
  void insertAtIndexInSyncBoletim(int index, BoletimStruct item) =>
      syncBoletim.insert(index, item);
  void updateSyncBoletimAtIndex(int index, Function(BoletimStruct) updateFn) =>
      syncBoletim[index] = updateFn(syncBoletim[index]);

  List<AtividadeBoletimStruct> syncAtividadeBoletim = [];
  void addToSyncAtividadeBoletim(AtividadeBoletimStruct item) =>
      syncAtividadeBoletim.add(item);
  void removeFromSyncAtividadeBoletim(AtividadeBoletimStruct item) =>
      syncAtividadeBoletim.remove(item);
  void removeAtIndexFromSyncAtividadeBoletim(int index) =>
      syncAtividadeBoletim.removeAt(index);
  void insertAtIndexInSyncAtividadeBoletim(
          int index, AtividadeBoletimStruct item) =>
      syncAtividadeBoletim.insert(index, item);
  void updateSyncAtividadeBoletimAtIndex(
          int index, Function(AtividadeBoletimStruct) updateFn) =>
      syncAtividadeBoletim[index] = updateFn(syncAtividadeBoletim[index]);

  List<FuroBoletimStruct> syncFuroBoletim = [];
  void addToSyncFuroBoletim(FuroBoletimStruct item) =>
      syncFuroBoletim.add(item);
  void removeFromSyncFuroBoletim(FuroBoletimStruct item) =>
      syncFuroBoletim.remove(item);
  void removeAtIndexFromSyncFuroBoletim(int index) =>
      syncFuroBoletim.removeAt(index);
  void insertAtIndexInSyncFuroBoletim(int index, FuroBoletimStruct item) =>
      syncFuroBoletim.insert(index, item);
  void updateSyncFuroBoletimAtIndex(
          int index, Function(FuroBoletimStruct) updateFn) =>
      syncFuroBoletim[index] = updateFn(syncFuroBoletim[index]);

  List<DocumentReference> lstSupervisoresBoletim = [];
  void addToLstSupervisoresBoletim(DocumentReference item) =>
      lstSupervisoresBoletim.add(item);
  void removeFromLstSupervisoresBoletim(DocumentReference item) =>
      lstSupervisoresBoletim.remove(item);
  void removeAtIndexFromLstSupervisoresBoletim(int index) =>
      lstSupervisoresBoletim.removeAt(index);
  void insertAtIndexInLstSupervisoresBoletim(
          int index, DocumentReference item) =>
      lstSupervisoresBoletim.insert(index, item);
  void updateLstSupervisoresBoletimAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      lstSupervisoresBoletim[index] = updateFn(lstSupervisoresBoletim[index]);

  int? incEquipe = 0;

  List<DocumentReference> lstOperadoresBoletim = [];
  void addToLstOperadoresBoletim(DocumentReference item) =>
      lstOperadoresBoletim.add(item);
  void removeFromLstOperadoresBoletim(DocumentReference item) =>
      lstOperadoresBoletim.remove(item);
  void removeAtIndexFromLstOperadoresBoletim(int index) =>
      lstOperadoresBoletim.removeAt(index);
  void insertAtIndexInLstOperadoresBoletim(int index, DocumentReference item) =>
      lstOperadoresBoletim.insert(index, item);
  void updateLstOperadoresBoletimAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      lstOperadoresBoletim[index] = updateFn(lstOperadoresBoletim[index]);

  List<DocumentReference> lstAuxiliaresBoletim = [];
  void addToLstAuxiliaresBoletim(DocumentReference item) =>
      lstAuxiliaresBoletim.add(item);
  void removeFromLstAuxiliaresBoletim(DocumentReference item) =>
      lstAuxiliaresBoletim.remove(item);
  void removeAtIndexFromLstAuxiliaresBoletim(int index) =>
      lstAuxiliaresBoletim.removeAt(index);
  void insertAtIndexInLstAuxiliaresBoletim(int index, DocumentReference item) =>
      lstAuxiliaresBoletim.insert(index, item);
  void updateLstAuxiliaresBoletimAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      lstAuxiliaresBoletim[index] = updateFn(lstAuxiliaresBoletim[index]);

  int? incAtividades = 0;

  int? incFuroBoletim = 0;

  FuroRecord? furoLocalSync;

  ///  State fields for stateful widgets in this page.

  InstantTimer? instantTimer;
  // Stores action output result for [Custom Action - checkInternetConnection] action in ListaBoletins widget.
  bool? comInternet;
  // Stores action output result for [Backend Call - Create Document] action in Container widget.
  FuroRecord? newFuroFB;
  // Stores action output result for [Backend Call - Create Document] action in Container widget.
  BoletimRecord? newBoletimFB;
  // Stores action output result for [Firestore Query - Query a collection] action in Container widget.
  FuroRecord? furoFB;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    instantTimer?.cancel();
  }
}
