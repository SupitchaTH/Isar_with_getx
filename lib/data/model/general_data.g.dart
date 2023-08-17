// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general_data.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetGeneralCollection on Isar {
  IsarCollection<General> get generals => this.collection();
}

const GeneralSchema = CollectionSchema(
  name: r'General',
  id: 3338436836839990578,
  properties: {
    r'academy': PropertySchema(
      id: 0,
      name: r'academy',
      type: IsarType.string,
    ),
    r'birthdate': PropertySchema(
      id: 1,
      name: r'birthdate',
      type: IsarType.string,
    ),
    r'department': PropertySchema(
      id: 2,
      name: r'department',
      type: IsarType.string,
    ),
    r'educationlevel': PropertySchema(
      id: 3,
      name: r'educationlevel',
      type: IsarType.string,
    ),
    r'email': PropertySchema(
      id: 4,
      name: r'email',
      type: IsarType.string,
    ),
    r'experiencekey': PropertySchema(
      id: 5,
      name: r'experiencekey',
      type: IsarType.objectList,
      target: r'ExperienceKey',
    ),
    r'firstname': PropertySchema(
      id: 6,
      name: r'firstname',
      type: IsarType.string,
    ),
    r'phone': PropertySchema(
      id: 7,
      name: r'phone',
      type: IsarType.string,
    ),
    r'skills': PropertySchema(
      id: 8,
      name: r'skills',
      type: IsarType.stringList,
    ),
    r'surname': PropertySchema(
      id: 9,
      name: r'surname',
      type: IsarType.string,
    )
  },
  estimateSize: _generalEstimateSize,
  serialize: _generalSerialize,
  deserialize: _generalDeserialize,
  deserializeProp: _generalDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {r'ExperienceKey': ExperienceKeySchema},
  getId: _generalGetId,
  getLinks: _generalGetLinks,
  attach: _generalAttach,
  version: '3.1.0+1',
);

int _generalEstimateSize(
  General object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.academy.length * 3;
  bytesCount += 3 + object.birthdate.length * 3;
  bytesCount += 3 + object.department.length * 3;
  bytesCount += 3 + object.educationlevel.length * 3;
  bytesCount += 3 + object.email.length * 3;
  {
    final list = object.experiencekey;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[ExperienceKey]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              ExperienceKeySchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  bytesCount += 3 + object.firstname.length * 3;
  bytesCount += 3 + object.phone.length * 3;
  bytesCount += 3 + object.skills.length * 3;
  {
    for (var i = 0; i < object.skills.length; i++) {
      final value = object.skills[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.surname.length * 3;
  return bytesCount;
}

void _generalSerialize(
  General object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.academy);
  writer.writeString(offsets[1], object.birthdate);
  writer.writeString(offsets[2], object.department);
  writer.writeString(offsets[3], object.educationlevel);
  writer.writeString(offsets[4], object.email);
  writer.writeObjectList<ExperienceKey>(
    offsets[5],
    allOffsets,
    ExperienceKeySchema.serialize,
    object.experiencekey,
  );
  writer.writeString(offsets[6], object.firstname);
  writer.writeString(offsets[7], object.phone);
  writer.writeStringList(offsets[8], object.skills);
  writer.writeString(offsets[9], object.surname);
}

General _generalDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = General();
  object.academy = reader.readString(offsets[0]);
  object.birthdate = reader.readString(offsets[1]);
  object.department = reader.readString(offsets[2]);
  object.educationlevel = reader.readString(offsets[3]);
  object.email = reader.readString(offsets[4]);
  object.experiencekey = reader.readObjectList<ExperienceKey>(
    offsets[5],
    ExperienceKeySchema.deserialize,
    allOffsets,
    ExperienceKey(),
  );
  object.firstname = reader.readString(offsets[6]);
  object.id = id;
  object.phone = reader.readString(offsets[7]);
  object.skills = reader.readStringList(offsets[8]) ?? [];
  object.surname = reader.readString(offsets[9]);
  return object;
}

P _generalDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readObjectList<ExperienceKey>(
        offset,
        ExperienceKeySchema.deserialize,
        allOffsets,
        ExperienceKey(),
      )) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readStringList(offset) ?? []) as P;
    case 9:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _generalGetId(General object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _generalGetLinks(General object) {
  return [];
}

void _generalAttach(IsarCollection<dynamic> col, Id id, General object) {
  object.id = id;
}

extension GeneralQueryWhereSort on QueryBuilder<General, General, QWhere> {
  QueryBuilder<General, General, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension GeneralQueryWhere on QueryBuilder<General, General, QWhereClause> {
  QueryBuilder<General, General, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<General, General, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<General, General, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<General, General, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<General, General, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension GeneralQueryFilter
    on QueryBuilder<General, General, QFilterCondition> {
  QueryBuilder<General, General, QAfterFilterCondition> academyEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'academy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> academyGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'academy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> academyLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'academy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> academyBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'academy',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> academyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'academy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> academyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'academy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> academyContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'academy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> academyMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'academy',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> academyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'academy',
        value: '',
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> academyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'academy',
        value: '',
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> birthdateEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'birthdate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> birthdateGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'birthdate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> birthdateLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'birthdate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> birthdateBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'birthdate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> birthdateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'birthdate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> birthdateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'birthdate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> birthdateContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'birthdate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> birthdateMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'birthdate',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> birthdateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'birthdate',
        value: '',
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> birthdateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'birthdate',
        value: '',
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> departmentEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'department',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> departmentGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'department',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> departmentLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'department',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> departmentBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'department',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> departmentStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'department',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> departmentEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'department',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> departmentContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'department',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> departmentMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'department',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> departmentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'department',
        value: '',
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> departmentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'department',
        value: '',
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> educationlevelEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'educationlevel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition>
      educationlevelGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'educationlevel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> educationlevelLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'educationlevel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> educationlevelBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'educationlevel',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition>
      educationlevelStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'educationlevel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> educationlevelEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'educationlevel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> educationlevelContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'educationlevel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> educationlevelMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'educationlevel',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition>
      educationlevelIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'educationlevel',
        value: '',
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition>
      educationlevelIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'educationlevel',
        value: '',
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> emailEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> emailGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> emailLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> emailBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'email',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> emailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> emailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> emailContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> emailMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'email',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> emailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> emailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> experiencekeyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'experiencekey',
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition>
      experiencekeyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'experiencekey',
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition>
      experiencekeyLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'experiencekey',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> experiencekeyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'experiencekey',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition>
      experiencekeyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'experiencekey',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition>
      experiencekeyLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'experiencekey',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition>
      experiencekeyLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'experiencekey',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition>
      experiencekeyLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'experiencekey',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> firstnameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'firstname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> firstnameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'firstname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> firstnameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'firstname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> firstnameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'firstname',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> firstnameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'firstname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> firstnameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'firstname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> firstnameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'firstname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> firstnameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'firstname',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> firstnameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'firstname',
        value: '',
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> firstnameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'firstname',
        value: '',
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> phoneEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> phoneGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> phoneLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> phoneBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'phone',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> phoneStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> phoneEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> phoneContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> phoneMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'phone',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> phoneIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phone',
        value: '',
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> phoneIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'phone',
        value: '',
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> skillsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'skills',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition>
      skillsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'skills',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> skillsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'skills',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> skillsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'skills',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> skillsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'skills',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> skillsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'skills',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> skillsElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'skills',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> skillsElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'skills',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> skillsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'skills',
        value: '',
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition>
      skillsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'skills',
        value: '',
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> skillsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'skills',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> skillsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'skills',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> skillsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'skills',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> skillsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'skills',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> skillsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'skills',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> skillsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'skills',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> surnameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'surname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> surnameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'surname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> surnameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'surname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> surnameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'surname',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> surnameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'surname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> surnameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'surname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> surnameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'surname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> surnameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'surname',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> surnameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'surname',
        value: '',
      ));
    });
  }

  QueryBuilder<General, General, QAfterFilterCondition> surnameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'surname',
        value: '',
      ));
    });
  }
}

extension GeneralQueryObject
    on QueryBuilder<General, General, QFilterCondition> {
  QueryBuilder<General, General, QAfterFilterCondition> experiencekeyElement(
      FilterQuery<ExperienceKey> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'experiencekey');
    });
  }
}

extension GeneralQueryLinks
    on QueryBuilder<General, General, QFilterCondition> {}

extension GeneralQuerySortBy on QueryBuilder<General, General, QSortBy> {
  QueryBuilder<General, General, QAfterSortBy> sortByAcademy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'academy', Sort.asc);
    });
  }

  QueryBuilder<General, General, QAfterSortBy> sortByAcademyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'academy', Sort.desc);
    });
  }

  QueryBuilder<General, General, QAfterSortBy> sortByBirthdate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birthdate', Sort.asc);
    });
  }

  QueryBuilder<General, General, QAfterSortBy> sortByBirthdateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birthdate', Sort.desc);
    });
  }

  QueryBuilder<General, General, QAfterSortBy> sortByDepartment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'department', Sort.asc);
    });
  }

  QueryBuilder<General, General, QAfterSortBy> sortByDepartmentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'department', Sort.desc);
    });
  }

  QueryBuilder<General, General, QAfterSortBy> sortByEducationlevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'educationlevel', Sort.asc);
    });
  }

  QueryBuilder<General, General, QAfterSortBy> sortByEducationlevelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'educationlevel', Sort.desc);
    });
  }

  QueryBuilder<General, General, QAfterSortBy> sortByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<General, General, QAfterSortBy> sortByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<General, General, QAfterSortBy> sortByFirstname() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstname', Sort.asc);
    });
  }

  QueryBuilder<General, General, QAfterSortBy> sortByFirstnameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstname', Sort.desc);
    });
  }

  QueryBuilder<General, General, QAfterSortBy> sortByPhone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.asc);
    });
  }

  QueryBuilder<General, General, QAfterSortBy> sortByPhoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.desc);
    });
  }

  QueryBuilder<General, General, QAfterSortBy> sortBySurname() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'surname', Sort.asc);
    });
  }

  QueryBuilder<General, General, QAfterSortBy> sortBySurnameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'surname', Sort.desc);
    });
  }
}

extension GeneralQuerySortThenBy
    on QueryBuilder<General, General, QSortThenBy> {
  QueryBuilder<General, General, QAfterSortBy> thenByAcademy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'academy', Sort.asc);
    });
  }

  QueryBuilder<General, General, QAfterSortBy> thenByAcademyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'academy', Sort.desc);
    });
  }

  QueryBuilder<General, General, QAfterSortBy> thenByBirthdate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birthdate', Sort.asc);
    });
  }

  QueryBuilder<General, General, QAfterSortBy> thenByBirthdateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birthdate', Sort.desc);
    });
  }

  QueryBuilder<General, General, QAfterSortBy> thenByDepartment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'department', Sort.asc);
    });
  }

  QueryBuilder<General, General, QAfterSortBy> thenByDepartmentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'department', Sort.desc);
    });
  }

  QueryBuilder<General, General, QAfterSortBy> thenByEducationlevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'educationlevel', Sort.asc);
    });
  }

  QueryBuilder<General, General, QAfterSortBy> thenByEducationlevelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'educationlevel', Sort.desc);
    });
  }

  QueryBuilder<General, General, QAfterSortBy> thenByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<General, General, QAfterSortBy> thenByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<General, General, QAfterSortBy> thenByFirstname() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstname', Sort.asc);
    });
  }

  QueryBuilder<General, General, QAfterSortBy> thenByFirstnameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstname', Sort.desc);
    });
  }

  QueryBuilder<General, General, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<General, General, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<General, General, QAfterSortBy> thenByPhone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.asc);
    });
  }

  QueryBuilder<General, General, QAfterSortBy> thenByPhoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.desc);
    });
  }

  QueryBuilder<General, General, QAfterSortBy> thenBySurname() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'surname', Sort.asc);
    });
  }

  QueryBuilder<General, General, QAfterSortBy> thenBySurnameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'surname', Sort.desc);
    });
  }
}

extension GeneralQueryWhereDistinct
    on QueryBuilder<General, General, QDistinct> {
  QueryBuilder<General, General, QDistinct> distinctByAcademy(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'academy', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<General, General, QDistinct> distinctByBirthdate(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'birthdate', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<General, General, QDistinct> distinctByDepartment(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'department', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<General, General, QDistinct> distinctByEducationlevel(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'educationlevel',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<General, General, QDistinct> distinctByEmail(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'email', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<General, General, QDistinct> distinctByFirstname(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'firstname', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<General, General, QDistinct> distinctByPhone(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'phone', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<General, General, QDistinct> distinctBySkills() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'skills');
    });
  }

  QueryBuilder<General, General, QDistinct> distinctBySurname(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'surname', caseSensitive: caseSensitive);
    });
  }
}

extension GeneralQueryProperty
    on QueryBuilder<General, General, QQueryProperty> {
  QueryBuilder<General, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<General, String, QQueryOperations> academyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'academy');
    });
  }

  QueryBuilder<General, String, QQueryOperations> birthdateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'birthdate');
    });
  }

  QueryBuilder<General, String, QQueryOperations> departmentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'department');
    });
  }

  QueryBuilder<General, String, QQueryOperations> educationlevelProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'educationlevel');
    });
  }

  QueryBuilder<General, String, QQueryOperations> emailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'email');
    });
  }

  QueryBuilder<General, List<ExperienceKey>?, QQueryOperations>
      experiencekeyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'experiencekey');
    });
  }

  QueryBuilder<General, String, QQueryOperations> firstnameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'firstname');
    });
  }

  QueryBuilder<General, String, QQueryOperations> phoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'phone');
    });
  }

  QueryBuilder<General, List<String>, QQueryOperations> skillsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'skills');
    });
  }

  QueryBuilder<General, String, QQueryOperations> surnameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'surname');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const ExperienceKeySchema = Schema(
  name: r'ExperienceKey',
  id: 4905463680977671882,
  properties: {
    r'experience': PropertySchema(
      id: 0,
      name: r'experience',
      type: IsarType.string,
    ),
    r'organization': PropertySchema(
      id: 1,
      name: r'organization',
      type: IsarType.string,
    )
  },
  estimateSize: _experienceKeyEstimateSize,
  serialize: _experienceKeySerialize,
  deserialize: _experienceKeyDeserialize,
  deserializeProp: _experienceKeyDeserializeProp,
);

int _experienceKeyEstimateSize(
  ExperienceKey object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.experience;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.organization;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _experienceKeySerialize(
  ExperienceKey object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.experience);
  writer.writeString(offsets[1], object.organization);
}

ExperienceKey _experienceKeyDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ExperienceKey();
  object.experience = reader.readStringOrNull(offsets[0]);
  object.organization = reader.readStringOrNull(offsets[1]);
  return object;
}

P _experienceKeyDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ExperienceKeyQueryFilter
    on QueryBuilder<ExperienceKey, ExperienceKey, QFilterCondition> {
  QueryBuilder<ExperienceKey, ExperienceKey, QAfterFilterCondition>
      experienceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'experience',
      ));
    });
  }

  QueryBuilder<ExperienceKey, ExperienceKey, QAfterFilterCondition>
      experienceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'experience',
      ));
    });
  }

  QueryBuilder<ExperienceKey, ExperienceKey, QAfterFilterCondition>
      experienceEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'experience',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExperienceKey, ExperienceKey, QAfterFilterCondition>
      experienceGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'experience',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExperienceKey, ExperienceKey, QAfterFilterCondition>
      experienceLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'experience',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExperienceKey, ExperienceKey, QAfterFilterCondition>
      experienceBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'experience',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExperienceKey, ExperienceKey, QAfterFilterCondition>
      experienceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'experience',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExperienceKey, ExperienceKey, QAfterFilterCondition>
      experienceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'experience',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExperienceKey, ExperienceKey, QAfterFilterCondition>
      experienceContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'experience',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExperienceKey, ExperienceKey, QAfterFilterCondition>
      experienceMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'experience',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExperienceKey, ExperienceKey, QAfterFilterCondition>
      experienceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'experience',
        value: '',
      ));
    });
  }

  QueryBuilder<ExperienceKey, ExperienceKey, QAfterFilterCondition>
      experienceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'experience',
        value: '',
      ));
    });
  }

  QueryBuilder<ExperienceKey, ExperienceKey, QAfterFilterCondition>
      organizationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'organization',
      ));
    });
  }

  QueryBuilder<ExperienceKey, ExperienceKey, QAfterFilterCondition>
      organizationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'organization',
      ));
    });
  }

  QueryBuilder<ExperienceKey, ExperienceKey, QAfterFilterCondition>
      organizationEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'organization',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExperienceKey, ExperienceKey, QAfterFilterCondition>
      organizationGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'organization',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExperienceKey, ExperienceKey, QAfterFilterCondition>
      organizationLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'organization',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExperienceKey, ExperienceKey, QAfterFilterCondition>
      organizationBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'organization',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExperienceKey, ExperienceKey, QAfterFilterCondition>
      organizationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'organization',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExperienceKey, ExperienceKey, QAfterFilterCondition>
      organizationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'organization',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExperienceKey, ExperienceKey, QAfterFilterCondition>
      organizationContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'organization',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExperienceKey, ExperienceKey, QAfterFilterCondition>
      organizationMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'organization',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExperienceKey, ExperienceKey, QAfterFilterCondition>
      organizationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'organization',
        value: '',
      ));
    });
  }

  QueryBuilder<ExperienceKey, ExperienceKey, QAfterFilterCondition>
      organizationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'organization',
        value: '',
      ));
    });
  }
}

extension ExperienceKeyQueryObject
    on QueryBuilder<ExperienceKey, ExperienceKey, QFilterCondition> {}
