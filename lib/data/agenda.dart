class AgendasData {
  List<Agenda> agendas;

  AgendasData({this.agendas});

  AgendasData.fromJson(Map<String, dynamic> json) {
    if (json['sessions'] != null) {
      agendas = <Agenda>[];
      json['sessions'].forEach((v) {
        agendas.add(Agenda.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.agendas != null) {
      data['agendas'] = this.agendas.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Agenda {
  String agendaId;
  String agendaTitle;
  String agendaDesc;
  String agendaStartTime;
  String agendaTotalTime;
  String agendaLink;
  String speakerName;
  String speakerDesc;
  String speakerImage;
  String speakerId;

  Agenda({
    this.agendaId,
    this.agendaTitle,
    this.agendaDesc,
    this.agendaStartTime,
    this.agendaTotalTime,
    this.agendaLink,
    this.speakerName,
    this.speakerDesc,
    this.speakerImage,
    this.speakerId,
  });

  Agenda.fromJson(Map<String, dynamic> json) {
    agendaId = json['agenda_id'];
    agendaTitle = json['agenda_title'];
    agendaDesc = json['agenda_desc'];
    agendaStartTime = json['agenda_start_time'];
    agendaTotalTime = json['agenda_total_time'];
    agendaLink = json['agenda_link'];
    speakerName = json['agenda_name'];
    speakerDesc = json['agenda_desc'];
    speakerImage = json['agenda_image'];
    speakerId = json['agenda_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['session_id'] = this.agendaId;
    data['session_title'] = this.agendaTitle;
    data['session_desc'] = this.agendaDesc;
    data['session_start_time'] = this.agendaStartTime;
    data['session_total_time'] = this.agendaTotalTime;
    data['session_link'] = this.agendaLink;
    data['speaker_name'] = this.speakerName;
    data['speaker_desc'] = this.speakerDesc;
    data['speaker_image'] = this.speakerImage;
    data['speaker_id'] = this.speakerId;

    return data;
  }
}

List<Agenda> agendas = [
  Agenda(
    agendaId: "1",
    agendaStartTime: "6.30 AM (PDT)",
    agendaTotalTime: " 15 minutes",
    agendaTitle: "KICK OFF",
    speakerName: "",
    speakerDesc: "",
  ),
  Agenda(
    agendaId: "2",
    agendaStartTime: "6.45 AM (PDT)",
    agendaTotalTime: " 25 minutes",
    agendaTitle: "Deep Dive Into Streams",
    speakerName: "Katarina Sherement",
    speakerDesc: "Google Developer Expert in Flutter and Dart",
  ),
  Agenda(
    agendaId: "3",
    agendaStartTime: "7.10 AM (PDT)",
    agendaTotalTime: "15 minutes",
    agendaTitle: "Adobe XD for Flutter Developers",
    speakerName: "Anagha Sivadas",
    speakerDesc: "Computer Science Engineering student",
  ),
  Agenda(
    agendaId: "4",
    agendaStartTime: "7.25 AM (PDT)",
    agendaTotalTime: "15 minutes",
    agendaTitle: "Flutteristas In India",
    speakerName: "",
    speakerDesc: "",
  ),
  Agenda(
    agendaId: "5",
    agendaStartTime: "7.40 AM (PDT)",
    agendaTotalTime: "20 minutes",
    agendaTitle: "A DIY thermometer with Flutter and Arduino",
    speakerName: "Juna Salviati",
    speakerDesc: "Software Engineer",
  ),
  Agenda(
    agendaId: "6",
    agendaStartTime: "8.00 AM (PDT)",
    agendaTotalTime: "30 minutes",
    agendaTitle: "Widget Testing for Dummies",
    speakerName: "Pooja Bhaumik",
    speakerDesc: "Software Developer, Big Nerd Ranch",
  ),
  Agenda(
    agendaId: "7",
    agendaStartTime: "8.30 AM (PDT)",
    agendaTotalTime: "15 minutes",
    agendaTitle: "How Flutter became a turning point in my life",
    speakerName: "Radhika Goswami",
    speakerDesc: "Flutter Developer",
  ),
  Agenda(
    agendaId: "8",
    agendaStartTime: "8.45 AM (PDT)",
    agendaTotalTime: "10 minutes",
    agendaTitle: "FLUTTER CHALLENGE QUİZ",
    speakerName: "",
    speakerDesc: "",
  ),
  Agenda(
    agendaId: "9",
    agendaStartTime: "8.55 AM (PDT)",
    agendaTotalTime: "30 minutes",
    agendaTitle: "LIVE Q&A With Flutter PMS",
    speakerName: "Tim Sneath & MAriam Hasnany & Zoey Fan",
    speakerDesc: "",
  ),
  Agenda(
    agendaId: "10",
    agendaStartTime: "9.25 AM (PDT)",
    agendaTotalTime: "20 minutes",
    agendaTitle: "LIVE Q&A With Eric Seidel Of Flutter Team",
    speakerName: "Eric Seidel",
    speakerDesc: "",
  ),
  Agenda(
    agendaId: "11",
    agendaStartTime: "9.45 AM (PDT)",
    agendaTotalTime: "5 minutes",
    agendaTitle: "FUN - LET'S SEE ALL FLUTTERISTAS ON THE MAP!",
    speakerName: "",
    speakerDesc: "",
  ),
  Agenda(
    agendaId: "12",
    agendaStartTime: "9.50 AM (PDT)",
    agendaTotalTime: "25 minutes",
    agendaTitle: "Flutter - How Opensource Changed My Life",
    speakerName: "Kamal Shree",
    speakerDesc: "Google Developer Expert in Flutter",
  ),
  Agenda(
    agendaId: "13",
    agendaStartTime: "10.15 AM (PDT)",
    agendaTotalTime: "25 minutes",
    agendaTitle: "Prevailing over hurdles!",
    speakerName: "Aakanksha Shivani",
    speakerDesc: "Developer Student Clubs KIET Group of Institutions",
  ),
  Agenda(
    agendaId: "14",
    agendaStartTime: "10.40 AM (PDT)",
    agendaTotalTime: "10 minutes",
    agendaTitle: "FLUTTERISTAS TECHNICAL AND TRIVIA QUIZ",
    speakerName: "",
    speakerDesc: "",
  ),
  Agenda(
    agendaId: "15",
    agendaStartTime: "10.50 AM (PDT)",
    agendaTotalTime: "25 minutes",
    agendaTitle: "Animate With Flutter",
    speakerName: "Khushbu Thakker",
    speakerDesc:
        "Sr.Android Application Developer & Flutter Explorer @ Hyperlink Infosystem",
  ),
  Agenda(
    agendaId: "16",
    agendaStartTime: "11.15 AM (PDT)",
    agendaTotalTime: "25 minutes",
    agendaTitle:
        "From Zero Programming Knowledge to Software Engineer in 2 years",
    speakerName: "Mahtab Tadayon",
    speakerDesc: "Software Engineer Flutter",
  ),
  Agenda(
    agendaId: "17",
    agendaStartTime: "11.40 AM (PDT)",
    agendaTotalTime: "5 minutes",
    agendaTitle: "ESCAPEROOM",
    speakerName: "",
    speakerDesc: "",
  ),
  Agenda(
    agendaId: "18",
    agendaStartTime: "11.45 AM (PDT)",
    agendaTotalTime: "5 minutes",
    agendaTitle: "Stream Codelab Announcement",
    speakerName: "",
    speakerDesc: "",
  ),
  Agenda(
    agendaId: "19",
    agendaStartTime: "11.50 PM (PDT)",
    agendaTotalTime: "35 minutes",
    agendaTitle: "Code less, deliver more",
    speakerName: "Anna Domashych",
    speakerDesc: "Senior Mobile Engineer @Team Go",
  ),
  Agenda(
    agendaId: "20",
    agendaStartTime: "12.25 PM (PDT)",
    agendaTotalTime: "25 minutes",
    agendaTitle: "Scroll your widgets efficiently",
    speakerName: "Dhruva Shastri",
    speakerDesc: "Spin Doctor @3SidedCoin",
  ),
  Agenda(
    agendaId: "21",
    agendaStartTime: "12.50 PM (PDT)",
    agendaTotalTime: "10 minutes",
    agendaTitle: "Conference Organizers Panel",
    speakerName: "",
    speakerDesc: "",
  ),
  Agenda(
    agendaId: "22",
    agendaStartTime: "12.50 PM (PDT)",
    agendaTotalTime: "10 minutes",
    agendaTitle: "Flutter & Rive: Beyond Design",
    speakerName: "Merve Arslan",
    speakerDesc: "Flutter Developer",
  ),
  Agenda(
    agendaId: "23",
    agendaStartTime: "1.25 PM (PDT)",
    agendaTotalTime: "30 minutes",
    agendaTitle: "Rule All Screens 🔥",
    speakerName: "Nawal Alhamwi & Rihanna Kedir",
    speakerDesc: "Flutter Developer",
  ),
  Agenda(
    agendaId: "24",
    agendaStartTime: "1.55 PM (PDT)",
    agendaTotalTime: "5 minutes",
    agendaTitle: "Raffle For O'reilly Books",
    speakerName: "",
    speakerDesc: "",
  ),
  Agenda(
    agendaId: "25",
    agendaStartTime: "2.0 PM (PDT)",
    agendaTotalTime: "30 minutes",
    agendaTitle: "Introducing the Alternative Internet",
    speakerName: "Barbara Tallent",
    speakerDesc: "The @Company Co-Founder",
  ),
  Agenda(
    agendaId: "26",
    agendaStartTime: "2.30 PM (PDT)",
    agendaTotalTime: "5 minutes",
    agendaTitle: "POLL",
    speakerName: "",
    speakerDesc: "",
  ),
  Agenda(
    agendaId: "27",
    agendaStartTime: "2.35 PM (PDT)",
    agendaTotalTime: "25 minutes",
    agendaTitle: "Generative Geometric Art on the Flutter Canvas",
    speakerName: "Sarah Fullmer",
    speakerDesc: "Flutter Developer",
  ),
  Agenda(
    agendaId: "28",
    agendaStartTime: "3.00 PM (PDT)",
    agendaTotalTime: "20 minutes",
    agendaTitle: "Unfolding Web App with Flutter 2.0",
    speakerName: "Renuka Kelkar",
    speakerDesc: "Founder @TechPower",
  ),
  Agenda(
    agendaId: "29",
    agendaStartTime: "3.20 PM (PDT)",
    agendaTotalTime: "10 minutes",
    agendaTitle: "Interview with Jenn Magder From Flutter Team",
    speakerName: "",
    speakerDesc: "",
  ),
  Agenda(
    agendaId: "30",
    agendaStartTime: "3.30 PM (PDT)",
    agendaTotalTime: "30 minutes",
    agendaTitle: "Build Flutter with BDD",
    speakerName: "Teresa Wu",
    speakerDesc: "Head of Android Engineering @Tide",
  ),
  Agenda(
    agendaId: "31",
    agendaStartTime: "4.0 PM (PDT)",
    agendaTotalTime: "25 minutes",
    agendaTitle: "Boring Flutter Development & More",
    speakerName: "Mais Alheraki",
    speakerDesc: "Software Engineer, Flutter & Dart GDE",
  ),
  Agenda(
    agendaId: "32",
    agendaStartTime: "4.25 PM (PDT)",
    agendaTotalTime: "5 minutes",
    agendaTitle: "FUN - LET'S SEE ALL FLUTTERISTAS ON THE MAP!",
    speakerName: "",
    speakerDesc: "",
  ),
  Agenda(
    agendaId: "33",
    agendaStartTime: "4.30 PM (PDT)",
    agendaTotalTime: "10 minutes",
    agendaTitle: "ANNOUNCE CONTEST WINNERS",
    speakerName: "",
    speakerDesc: "",
  ),
  Agenda(
    agendaId: "34",
    agendaStartTime: "4.30 PM (PDT)",
    agendaTotalTime: "5 minutes",
    agendaTitle: "GOOD BYE!",
    speakerName: "",
    speakerDesc: "",
  ),
];
