class SectionModel{
  late String section;
  late List<Map<String,dynamic>> lessons;

  SectionModel({required this.section, required this.lessons});

  static List<SectionModel> getSections(){
    List<SectionModel> sections = [];

    sections.add(
      SectionModel(section: 'Section 1', lessons: [
        {'lesson' : 'Lesson 1', 'locked' : false, '_lesson' : true},
        {'lesson' : 'Lesson 2', 'locked' : true, '_lesson' : true},
        {'lesson' : 'Lesson 3', 'locked' : true, '_lesson' : true},
        {'lesson' : 'Lesson 4', 'locked' : true, '_lesson' : true},
        {'lesson' : 'Lesson 5', 'locked' : true, '_lesson' : true},
        {'lesson' : 'Lesson 6', 'locked' : true, '_lesson' : true},
        {'lesson' : 'Lesson 7', 'locked' : true, '_lesson' : true},
        {'lesson' : 'Lesson 8', 'locked' : true, '_lesson' : true},
        {'lesson' : 'Lesson 9', 'locked' : true, '_lesson' : true},
        {'lesson' : 'Lesson 10', 'locked' : true, '_lesson' : true},
        {'lesson' : 'Lesson 11', 'locked' : true, '_lesson' : true},
        {'lesson' : 'Lesson 12', 'locked' : true, '_lesson' : true},
        {'lesson' : 'Lesson 13', 'locked' : true, '_lesson' : true},
        {'lesson' : 'Quiz 1', 'locked' : true, '_lesson' : false,'duration': '20 mins',},
      ])
    );
    sections.add(
        SectionModel(section: 'Section 2', lessons: [
          {'lesson' : 'Lesson 1', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 2', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 3', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 4', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 5', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 6', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 7', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 8', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 9', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Quiz 2', 'locked' : true, '_lesson' : false,'duration': '20 mins',},

        ])
    );
    sections.add(
        SectionModel(section: 'Section 3', lessons: [
          {'lesson' : 'Lesson 1', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 2', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 3', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 4', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 5', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 6', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 7', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 8', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 9', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 10', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 11', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 12', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 13', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 14', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Quiz 3', 'locked' : true, '_lesson' : false,'duration': '20 mins',},

        ])
    );
    sections.add(
        SectionModel(section: 'Section 4', lessons: [
          {'lesson' : 'Lesson 1', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 2', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 3', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 4', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 5', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 6', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 7', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 8', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 9', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 10', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 11', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 12', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 13', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Quiz 4', 'locked' : true, '_lesson' : false,'duration': '20 mins',},
        ])
    );
    sections.add(
        SectionModel(section: 'Section 5', lessons: [
          {'lesson' : 'Lesson 1', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 2', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 3', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 4', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 5', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 6', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 7', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 8', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 9', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 10', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 11', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 12', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 13', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 14', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Quiz 3', 'locked' : true, '_lesson' : false,'duration': '20 mins',},


        ])
    );
    sections.add(
        SectionModel(section: 'Section 6', lessons: [
          {'lesson' : 'Lesson 1', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 2', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 3', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 4', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 5', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 6', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 7', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 8', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 9', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 10', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Lesson 11', 'locked' : true, '_lesson' : true},
          {'lesson' : 'Quiz 3', 'locked' : true, '_lesson' : false,'duration': '20 mins',},
        ])
    );

    return sections;

  }
}
