// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ConsistenciaStruct extends FFFirebaseStruct {
  ConsistenciaStruct({
    DocumentReference? id,
    String? tipoSolo,
    DateTime? createdAt,
    DateTime? updatedAt,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _tipoSolo = tipoSolo,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        super(firestoreUtilData);

  // "ID" field.
  DocumentReference? _id;
  DocumentReference? get id => _id;
  set id(DocumentReference? val) => _id = val;

  bool hasId() => _id != null;

  // "tipoSolo" field.
  String? _tipoSolo;
  String get tipoSolo => _tipoSolo ?? '';
  set tipoSolo(String? val) => _tipoSolo = val;

  bool hasTipoSolo() => _tipoSolo != null;

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

  static ConsistenciaStruct fromMap(Map<String, dynamic> data) =>
      ConsistenciaStruct(
        id: data['ID'] as DocumentReference?,
        tipoSolo: data['tipoSolo'] as String?,
        createdAt: data['createdAt'] as DateTime?,
        updatedAt: data['updatedAt'] as DateTime?,
      );

  static ConsistenciaStruct? maybeFromMap(dynamic data) => data is Map
      ? ConsistenciaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'ID': _id,
        'tipoSolo': _tipoSolo,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ID': serializeParam(
          _id,
          ParamType.DocumentReference,
        ),
        'tipoSolo': serializeParam(
          _tipoSolo,
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

  static ConsistenciaStruct fromSerializableMap(Map<String, dynamic> data) =>
      ConsistenciaStruct(
        id: deserializeParam(
          data['ID'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['consistencia'],
        ),
        tipoSolo: deserializeParam(
          data['tipoSolo'],
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
  String toString() => 'ConsistenciaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ConsistenciaStruct &&
        id == other.id &&
        tipoSolo == other.tipoSolo &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, tipoSolo, createdAt, updatedAt]);
}

ConsistenciaStruct createConsistenciaStruct({
  DocumentReference? id,
  String? tipoSolo,
  DateTime? createdAt,
  DateTime? updatedAt,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ConsistenciaStruct(
      id: id,
      tipoSolo: tipoSolo,
      createdAt: createdAt,
      updatedAt: updatedAt,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ConsistenciaStruct? updateConsistenciaStruct(
  ConsistenciaStruct? consistencia, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    consistencia
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addConsistenciaStructData(
  Map<String, dynamic> firestoreData,
  ConsistenciaStruct? consistencia,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (consistencia == null) {
    return;
  }
  if (consistencia.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && consistencia.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final consistenciaData =
      getConsistenciaFirestoreData(consistencia, forFieldValue);
  final nestedData =
      consistenciaData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = consistencia.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getConsistenciaFirestoreData(
  ConsistenciaStruct? consistencia, [
  bool forFieldValue = false,
]) {
  if (consistencia == null) {
    return {};
  }
  final firestoreData = mapToFirestore(consistencia.toMap());

  // Add any Firestore field values
  consistencia.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getConsistenciaListFirestoreData(
  List<ConsistenciaStruct>? consistencias,
) =>
    consistencias?.map((e) => getConsistenciaFirestoreData(e, true)).toList() ??
    [];
