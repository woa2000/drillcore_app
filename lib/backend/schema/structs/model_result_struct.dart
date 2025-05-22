// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ModelResultStruct extends FFFirebaseStruct {
  ModelResultStruct({
    bool? sucesso,
    String? titulo,
    List<String>? erros,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _sucesso = sucesso,
        _titulo = titulo,
        _erros = erros,
        super(firestoreUtilData);

  // "sucesso" field.
  bool? _sucesso;
  bool get sucesso => _sucesso ?? false;
  set sucesso(bool? val) => _sucesso = val;

  bool hasSucesso() => _sucesso != null;

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  set titulo(String? val) => _titulo = val;

  bool hasTitulo() => _titulo != null;

  // "erros" field.
  List<String>? _erros;
  List<String> get erros => _erros ?? const [];
  set erros(List<String>? val) => _erros = val;

  void updateErros(Function(List<String>) updateFn) {
    updateFn(_erros ??= []);
  }

  bool hasErros() => _erros != null;

  static ModelResultStruct fromMap(Map<String, dynamic> data) =>
      ModelResultStruct(
        sucesso: data['sucesso'] as bool?,
        titulo: data['titulo'] as String?,
        erros: getDataList(data['erros']),
      );

  static ModelResultStruct? maybeFromMap(dynamic data) => data is Map
      ? ModelResultStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'sucesso': _sucesso,
        'titulo': _titulo,
        'erros': _erros,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'sucesso': serializeParam(
          _sucesso,
          ParamType.bool,
        ),
        'titulo': serializeParam(
          _titulo,
          ParamType.String,
        ),
        'erros': serializeParam(
          _erros,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static ModelResultStruct fromSerializableMap(Map<String, dynamic> data) =>
      ModelResultStruct(
        sucesso: deserializeParam(
          data['sucesso'],
          ParamType.bool,
          false,
        ),
        titulo: deserializeParam(
          data['titulo'],
          ParamType.String,
          false,
        ),
        erros: deserializeParam<String>(
          data['erros'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'ModelResultStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ModelResultStruct &&
        sucesso == other.sucesso &&
        titulo == other.titulo &&
        listEquality.equals(erros, other.erros);
  }

  @override
  int get hashCode => const ListEquality().hash([sucesso, titulo, erros]);
}

ModelResultStruct createModelResultStruct({
  bool? sucesso,
  String? titulo,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ModelResultStruct(
      sucesso: sucesso,
      titulo: titulo,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ModelResultStruct? updateModelResultStruct(
  ModelResultStruct? modelResult, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    modelResult
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addModelResultStructData(
  Map<String, dynamic> firestoreData,
  ModelResultStruct? modelResult,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (modelResult == null) {
    return;
  }
  if (modelResult.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && modelResult.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final modelResultData =
      getModelResultFirestoreData(modelResult, forFieldValue);
  final nestedData =
      modelResultData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = modelResult.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getModelResultFirestoreData(
  ModelResultStruct? modelResult, [
  bool forFieldValue = false,
]) {
  if (modelResult == null) {
    return {};
  }
  final firestoreData = mapToFirestore(modelResult.toMap());

  // Add any Firestore field values
  modelResult.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getModelResultListFirestoreData(
  List<ModelResultStruct>? modelResults,
) =>
    modelResults?.map((e) => getModelResultFirestoreData(e, true)).toList() ??
    [];
