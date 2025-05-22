// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ParametrosStruct extends FFFirebaseStruct {
  ParametrosStruct({
    String? senhaExclusaoBoletim,
    String? senhaExclusaoAtividade,
    String? senhaPermissaoLimpezaCache,
    DateTime? createdAt,
    DateTime? updatedAt,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _senhaExclusaoBoletim = senhaExclusaoBoletim,
        _senhaExclusaoAtividade = senhaExclusaoAtividade,
        _senhaPermissaoLimpezaCache = senhaPermissaoLimpezaCache,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        super(firestoreUtilData);

  // "senhaExclusaoBoletim" field.
  String? _senhaExclusaoBoletim;
  String get senhaExclusaoBoletim => _senhaExclusaoBoletim ?? '';
  set senhaExclusaoBoletim(String? val) => _senhaExclusaoBoletim = val;

  bool hasSenhaExclusaoBoletim() => _senhaExclusaoBoletim != null;

  // "senhaExclusaoAtividade" field.
  String? _senhaExclusaoAtividade;
  String get senhaExclusaoAtividade => _senhaExclusaoAtividade ?? '';
  set senhaExclusaoAtividade(String? val) => _senhaExclusaoAtividade = val;

  bool hasSenhaExclusaoAtividade() => _senhaExclusaoAtividade != null;

  // "senhaPermissaoLimpezaCache" field.
  String? _senhaPermissaoLimpezaCache;
  String get senhaPermissaoLimpezaCache => _senhaPermissaoLimpezaCache ?? '';
  set senhaPermissaoLimpezaCache(String? val) =>
      _senhaPermissaoLimpezaCache = val;

  bool hasSenhaPermissaoLimpezaCache() => _senhaPermissaoLimpezaCache != null;

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

  static ParametrosStruct fromMap(Map<String, dynamic> data) =>
      ParametrosStruct(
        senhaExclusaoBoletim: data['senhaExclusaoBoletim'] as String?,
        senhaExclusaoAtividade: data['senhaExclusaoAtividade'] as String?,
        senhaPermissaoLimpezaCache:
            data['senhaPermissaoLimpezaCache'] as String?,
        createdAt: data['createdAt'] as DateTime?,
        updatedAt: data['updatedAt'] as DateTime?,
      );

  static ParametrosStruct? maybeFromMap(dynamic data) => data is Map
      ? ParametrosStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'senhaExclusaoBoletim': _senhaExclusaoBoletim,
        'senhaExclusaoAtividade': _senhaExclusaoAtividade,
        'senhaPermissaoLimpezaCache': _senhaPermissaoLimpezaCache,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'senhaExclusaoBoletim': serializeParam(
          _senhaExclusaoBoletim,
          ParamType.String,
        ),
        'senhaExclusaoAtividade': serializeParam(
          _senhaExclusaoAtividade,
          ParamType.String,
        ),
        'senhaPermissaoLimpezaCache': serializeParam(
          _senhaPermissaoLimpezaCache,
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

  static ParametrosStruct fromSerializableMap(Map<String, dynamic> data) =>
      ParametrosStruct(
        senhaExclusaoBoletim: deserializeParam(
          data['senhaExclusaoBoletim'],
          ParamType.String,
          false,
        ),
        senhaExclusaoAtividade: deserializeParam(
          data['senhaExclusaoAtividade'],
          ParamType.String,
          false,
        ),
        senhaPermissaoLimpezaCache: deserializeParam(
          data['senhaPermissaoLimpezaCache'],
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
  String toString() => 'ParametrosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ParametrosStruct &&
        senhaExclusaoBoletim == other.senhaExclusaoBoletim &&
        senhaExclusaoAtividade == other.senhaExclusaoAtividade &&
        senhaPermissaoLimpezaCache == other.senhaPermissaoLimpezaCache &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        senhaExclusaoBoletim,
        senhaExclusaoAtividade,
        senhaPermissaoLimpezaCache,
        createdAt,
        updatedAt
      ]);
}

ParametrosStruct createParametrosStruct({
  String? senhaExclusaoBoletim,
  String? senhaExclusaoAtividade,
  String? senhaPermissaoLimpezaCache,
  DateTime? createdAt,
  DateTime? updatedAt,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ParametrosStruct(
      senhaExclusaoBoletim: senhaExclusaoBoletim,
      senhaExclusaoAtividade: senhaExclusaoAtividade,
      senhaPermissaoLimpezaCache: senhaPermissaoLimpezaCache,
      createdAt: createdAt,
      updatedAt: updatedAt,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ParametrosStruct? updateParametrosStruct(
  ParametrosStruct? parametros, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    parametros
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addParametrosStructData(
  Map<String, dynamic> firestoreData,
  ParametrosStruct? parametros,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (parametros == null) {
    return;
  }
  if (parametros.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && parametros.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final parametrosData = getParametrosFirestoreData(parametros, forFieldValue);
  final nestedData = parametrosData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = parametros.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getParametrosFirestoreData(
  ParametrosStruct? parametros, [
  bool forFieldValue = false,
]) {
  if (parametros == null) {
    return {};
  }
  final firestoreData = mapToFirestore(parametros.toMap());

  // Add any Firestore field values
  parametros.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getParametrosListFirestoreData(
  List<ParametrosStruct>? parametross,
) =>
    parametross?.map((e) => getParametrosFirestoreData(e, true)).toList() ?? [];
