// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class EquipeStruct extends FFFirebaseStruct {
  EquipeStruct({
    DocumentReference? id,
    String? nome,
    String? funcao,
    bool? ativo,
    DateTime? createdAt,
    DateTime? updatedAt,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _nome = nome,
        _funcao = funcao,
        _ativo = ativo,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        super(firestoreUtilData);

  // "ID" field.
  DocumentReference? _id;
  DocumentReference? get id => _id;
  set id(DocumentReference? val) => _id = val;

  bool hasId() => _id != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  // "funcao" field.
  String? _funcao;
  String get funcao => _funcao ?? '';
  set funcao(String? val) => _funcao = val;

  bool hasFuncao() => _funcao != null;

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

  static EquipeStruct fromMap(Map<String, dynamic> data) => EquipeStruct(
        id: data['ID'] as DocumentReference?,
        nome: data['nome'] as String?,
        funcao: data['funcao'] as String?,
        ativo: data['ativo'] as bool?,
        createdAt: data['createdAt'] as DateTime?,
        updatedAt: data['updatedAt'] as DateTime?,
      );

  static EquipeStruct? maybeFromMap(dynamic data) =>
      data is Map ? EquipeStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'ID': _id,
        'nome': _nome,
        'funcao': _funcao,
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
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'funcao': serializeParam(
          _funcao,
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

  static EquipeStruct fromSerializableMap(Map<String, dynamic> data) =>
      EquipeStruct(
        id: deserializeParam(
          data['ID'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['equipe'],
        ),
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        funcao: deserializeParam(
          data['funcao'],
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
  String toString() => 'EquipeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EquipeStruct &&
        id == other.id &&
        nome == other.nome &&
        funcao == other.funcao &&
        ativo == other.ativo &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, nome, funcao, ativo, createdAt, updatedAt]);
}

EquipeStruct createEquipeStruct({
  DocumentReference? id,
  String? nome,
  String? funcao,
  bool? ativo,
  DateTime? createdAt,
  DateTime? updatedAt,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    EquipeStruct(
      id: id,
      nome: nome,
      funcao: funcao,
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

EquipeStruct? updateEquipeStruct(
  EquipeStruct? equipe, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    equipe
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addEquipeStructData(
  Map<String, dynamic> firestoreData,
  EquipeStruct? equipe,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (equipe == null) {
    return;
  }
  if (equipe.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && equipe.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final equipeData = getEquipeFirestoreData(equipe, forFieldValue);
  final nestedData = equipeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = equipe.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getEquipeFirestoreData(
  EquipeStruct? equipe, [
  bool forFieldValue = false,
]) {
  if (equipe == null) {
    return {};
  }
  final firestoreData = mapToFirestore(equipe.toMap());

  // Add any Firestore field values
  equipe.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getEquipeListFirestoreData(
  List<EquipeStruct>? equipes,
) =>
    equipes?.map((e) => getEquipeFirestoreData(e, true)).toList() ?? [];
