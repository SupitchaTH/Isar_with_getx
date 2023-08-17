// ignore_for_file: public_member_api_docs, sort_constructors_first
class BiologyItem {
  final String? id;
  final String? firstname;
  final String? surname;
  final String? email;
  final String? phone;
  final String? birthdate;
  final String? educationlevel;
  final String? department;
  final String? academy;
  //final List<Experiencekey>? experiencekey;
  //final List<String>? skills;

  BiologyItem({
    this.id,
    this.firstname,
    this.surname,
    this.email,
    this.phone,
    this.birthdate,
    this.educationlevel,
    this.department,
    this.academy,
    //this.experiencekey,
    //this.skills,
  });

  factory BiologyItem.fromMap(Map map) {
    return BiologyItem(
      id: map["id"],
      firstname: map["firstname"],
      surname: map["surname"],
      email: map["email"],
      phone: map["phone"],
      birthdate: map["birthdate"],
      educationlevel: map["educationlevel"],
      department: map["department"],
      academy: map["academy"],
      /*experiencekey: map["experiencekey"] == null
          ? []
          : List<Experiencekey>.from(
              map["experiencekey"]!.map((x) => Experiencekey.fromMap(x))),
      skills: map["skills"] == null
          ? []
          : List<String>.from(map["skills"]!.map((x) => x)),*/
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "firstname": firstname,
      "surname": surname,
      "email": email,
      "phone": phone,
      "birthdate": birthdate,
      "educationlevel": educationlevel,
      "department": department,
      "academy": academy,
      /*"experiencekey": experiencekey == null
          ? []
          : List<dynamic>.from(experiencekey!.map((x) => x.toMap())),
      "skills": skills == null ? [] : List<dynamic>.from(skills!.map((x) => x)),*/
    };
  }
}

class Experiencekey {
  //String? index;
  String? experience;
  String? organization;

  Experiencekey({
    //this.index,
    this.experience,
    this.organization,
  });

  factory Experiencekey.fromMap(Map map) {
    return Experiencekey(
      //index: map["index"],
      experience: map["experience"],
      organization: map["organization"],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      //"index": index,
      "experience": experience,
      "organization": organization,
    };
  }
}

class SkillChip {
  final String id;
  final String name;
  SkillChip({
    required this.id,
    required this.name,
  });
}

class AdditionalFieldData {
  final String? experience;
  final String? organization;
  AdditionalFieldData({
    this.experience,
    this.organization,
  });
}


/*
{
    "id": "1",
    "firstname": "John",
    "surname": "Doe",
    "email": "john.doe@example.com",
    "phone": "1234567890",
    "birthdate": "1990-01-01",
    "educationlevel": "Bachelor",
    "department": "Biology",
    "academy": "ABC University",
    "experiencekey": [
        {
            "experience": "trianee",
            "organization": "SWU"
        },
        {
            "experience": "trianee",
            "organization": "CU"
        }
    ],
    "skills": [
        "Skill 1",
        "Skill 2",
        "Skill 3"
    ]
}*/
