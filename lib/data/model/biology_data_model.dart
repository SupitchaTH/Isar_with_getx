class BiologyItem {
  String? id;
  String? firstname;
  String? surname;
  String? email;
  String? phone;
  String? birthdate;
  String? educationlevel;
  String? department;
  String? academy;
  String? experience;
  String? organization;
  List<String>? skills;

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
    this.experience,
    this.organization,
    this.skills,
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
      experience: map["experience"],
      organization: map["organization"],
      skills: map["skills"] == null
          ? []
          : List<String>.from(map["skills"]!.map((x) => x)),
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
      "experience": experience,
      "organization": organization,
      "skills": skills == null ? [] : List<dynamic>.from(skills!.map((x) => x)),
    };
  }
}
