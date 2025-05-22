// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class DiametroStruct extends FFFirebaseStruct {
  DiametroStruct({
    DocumentReference? id,
    String? nomeDiametro,
    DateTime? createdAt,
    DateTime? updatedAt,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _nomeDiametro = nomeDiametro,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        super(firestoreUtilData);

  // "ID" field.
  DocumentReference? _id;
  DocumentReference? get id => _id;
  set id(DocumentReference? val) => _id = val;

  bool hasId() => _id != null;

  // "nomeDiametro" field.
  String? _nomeDiametro;
  String get nomeDiametro => _nomeDiametro ?? '';
  set nomeDiametro(String? val) => _nomeDiametro = val;

  bool hasNomeDiametro() => _nomeDiametro != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  set createdAt(DateTime? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "updatedAt" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  set updatedAt(DateTime? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  static DiametroStruct fromMap(Map<String, dynamic> data) => DiametroStruct(
        id: data['ID'] as DocumentReference?,
        nomeDiametro: data['nomeDiametro'] as String?,
        createdAt: data['createdAt'] as DateTime?,
        updatedAt: data['updatedAt'] as DateTime?,
      );

  static DiametroStruct? maybeFromMap(dynamic data) =>
      data is Map ? DiametroStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'ID': _id,
        'nomeDiametro': _nomeDiametro,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ID': serializeParam(
          _id,
          ParamType.DocumentReference,
        ),
        'nomeDiametro': serializeParam(
          _nomeDiametro,
          ParamType.String,
        ),
        'createdAt': serializeParam(
          _createdAt,
          ParamType.DateTime,
        ),
        'updatedAt': serializeParam(
          _updatedAt,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static DiametroStruct fromSerializableMap(Map<String, dynamic> data) =>
      DiametroStruct(
        id: deserializeParam(
          data['ID'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['diametro'],
        ),
        nomeDiametro: deserializeParam(
          data['nomeDiametro'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['createdAt'],
          ParamType.DateTime,
          false,
        ),
        updatedAt: deserializeParam(
          data['updatedAt'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'DiametroStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DiametroStruct &&
        id == other.id &&
        nomeDiametro == other.nomeDiametro &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, nomeDiametro, createdAt, updatedAt]);
}

DiametroStruct createDiametroStruct({
  DocumentReference? id,
  String? nomeDiametro,
  DateTime? createdAt,
  DateTime? updatedAt,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DiametroStruct(
      id: id,
      nomeDiametro: nomeDiametro,
      createdAt: createdAt,
      updatedAt: updatedAt,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DiametroStruct? updateDiametroStruct(
  DiametroStruct? diametro, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    diametro
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDiametroStructData(
  Map<String, dynamic> firestoreData,
  DiametroStruct? diametro,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (diametro == null) {
    return;
  }
  if (diametro.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && diametro.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final diametroData = getDiametroFirestoreData(diametro, forFieldValue);
  final nestedData = diametroData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = diametro.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDiametroFirestoreData(
  DiametroStruct? diametro, [
  bool forFieldValue = false,
]) {
  if (diametro == null) {
    return {};
  }
  final firestoreData = mapToFirestore(diametro.toMap());

  // Add any Firestore field values
  diametro.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDiametroListFirestoreData(
  List<DiametroStruct>? diametros,
) =>
    diametros?.map((e) => getDiametroFirestoreData(e, true)).toList() ?? [];
