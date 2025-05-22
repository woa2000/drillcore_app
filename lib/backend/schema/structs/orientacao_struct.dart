// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class OrientacaoStruct extends FFFirebaseStruct {
  OrientacaoStruct({
    DocumentReference? id,
    String? codigo,
    String? sigla,
    String? descricao,
    bool? ativo,
    DateTime? createdAt,
    DateTime? updatedAt,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _codigo = codigo,
        _sigla = sigla,
        _descricao = descricao,
        _ativo = ativo,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        super(firestoreUtilData);

  // "ID" field.
  DocumentReference? _id;
  DocumentReference? get id => _id;
  set id(DocumentReference? val) => _id = val;

  bool hasId() => _id != null;

  // "codigo" field.
  String? _codigo;
  String get codigo => _codigo ?? '';
  set codigo(String? val) => _codigo = val;

  bool hasCodigo() => _codigo != null;

  // "sigla" field.
  String? _sigla;
  String get sigla => _sigla ?? '';
  set sigla(String? val) => _sigla = val;

  bool hasSigla() => _sigla != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  set descricao(String? val) => _descricao = val;

  bool hasDescricao() => _descricao != null;

  // "ativo" field.
  bool? _ativo;
  bool get ativo => _ativo ?? false;
  set ativo(bool? val) => _ativo = val;

  bool hasAtivo() => _ativo != null;

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

  static OrientacaoStruct fromMap(Map<String, dynamic> data) =>
      OrientacaoStruct(
        id: data['ID'] as DocumentReference?,
        codigo: data['codigo'] as String?,
        sigla: data['sigla'] as String?,
        descricao: data['descricao'] as String?,
        ativo: data['ativo'] as bool?,
        createdAt: data['createdAt'] as DateTime?,
        updatedAt: data['updatedAt'] as DateTime?,
      );

  static OrientacaoStruct? maybeFromMap(dynamic data) => data is Map
      ? OrientacaoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'ID': _id,
        'codigo': _codigo,
        'sigla': _sigla,
        'descricao': _descricao,
        'ativo': _ativo,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ID': serializeParam(
          _id,
          ParamType.DocumentReference,
        ),
        'codigo': serializeParam(
          _codigo,
          ParamType.String,
        ),
        'sigla': serializeParam(
          _sigla,
          ParamType.String,
        ),
        'descricao': serializeParam(
          _descricao,
          ParamType.String,
        ),
        'ativo': serializeParam(
          _ativo,
          ParamType.bool,
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

  static OrientacaoStruct fromSerializableMap(Map<String, dynamic> data) =>
      OrientacaoStruct(
        id: deserializeParam(
          data['ID'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['orientacao'],
        ),
        codigo: deserializeParam(
          data['codigo'],
          ParamType.String,
          false,
        ),
        sigla: deserializeParam(
          data['sigla'],
          ParamType.String,
          false,
        ),
        descricao: deserializeParam(
          data['descricao'],
          ParamType.String,
          false,
        ),
        ativo: deserializeParam(
          data['ativo'],
          ParamType.bool,
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
  String toString() => 'OrientacaoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OrientacaoStruct &&
        id == other.id &&
        codigo == other.codigo &&
        sigla == other.sigla &&
        descricao == other.descricao &&
        ativo == other.ativo &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, codigo, sigla, descricao, ativo, createdAt, updatedAt]);
}

OrientacaoStruct createOrientacaoStruct({
  DocumentReference? id,
  String? codigo,
  String? sigla,
  String? descricao,
  bool? ativo,
  DateTime? createdAt,
  DateTime? updatedAt,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    OrientacaoStruct(
      id: id,
      codigo: codigo,
      sigla: sigla,
      descricao: descricao,
      ativo: ativo,
      createdAt: createdAt,
      updatedAt: updatedAt,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

OrientacaoStruct? updateOrientacaoStruct(
  OrientacaoStruct? orientacao, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    orientacao
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addOrientacaoStructData(
  Map<String, dynamic> firestoreData,
  OrientacaoStruct? orientacao,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (orientacao == null) {
    return;
  }
  if (orientacao.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && orientacao.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final orientacaoData = getOrientacaoFirestoreData(orientacao, forFieldValue);
  final nestedData = orientacaoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = orientacao.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getOrientacaoFirestoreData(
  OrientacaoStruct? orientacao, [
  bool forFieldValue = false,
]) {
  if (orientacao == null) {
    return {};
  }
  final firestoreData = mapToFirestore(orientacao.toMap());

  // Add any Firestore field values
  orientacao.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getOrientacaoListFirestoreData(
  List<OrientacaoStruct>? orientacaos,
) =>
    orientacaos?.map((e) => getOrientacaoFirestoreData(e, true)).toList() ?? [];
