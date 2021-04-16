class SpeakersData {
  List<Speaker> speakers;

  SpeakersData({this.speakers});

  SpeakersData.fromJson(Map<String, dynamic> json) {
    if (json['speakers'] != null) {
      speakers = <Speaker>[];
      json['speakers'].forEach((v) {
        speakers.add(Speaker.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.speakers != null) {
      data['speakers'] = this.speakers.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Speaker {
  String speakerImage;
  String speakerName;

  Speaker({
    this.speakerImage,
    this.speakerName,
  });

  Speaker.fromJson(Map<String, dynamic> json) {
    speakerImage = json['speaker_image'];
    speakerName = json['speaker_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['speaker_image'] = this.speakerImage;
    data['speaker_name'] = this.speakerName;
    return data;
  }
}

List<Speaker> speakers = [
  Speaker(
    speakerImage:
        "https://res.cloudinary.com/startup-grind/image/upload/c_fill,dpr_2.0,f_auto,g_center,h_250,q_auto:good,w_250/v1/gcs/platform-data-goog/events/Radhika-Goswami.jpeg",
    speakerName: "Radhika Goswami ",
  ),
  Speaker(
    speakerImage:
        "https://res.cloudinary.com/startup-grind/image/upload/c_fill,dpr_2.0,f_auto,g_center,h_250,q_auto:good,w_250/v1/gcs/platform-data-goog/events/katarina_sheremet.jpeg",
    speakerName: "Katarina Sheremet",
  ),
  Speaker(
    speakerImage:
        "https://pbs.twimg.com/profile_images/1373699717503148033/DUhMGLBE_400x400.jpg",
    speakerName: "Deepika Tripathi",
  ),
  Speaker(
    speakerImage:
        "https://res.cloudinary.com/startup-grind/image/upload/c_fill,dpr_2.0,f_auto,g_center,h_250,q_auto:good,w_250/v1/gcs/platform-data-goog/events/Nawal_Alhamwi.jpeg",
    speakerName: "Nawal Alhamwi",
  ),
  Speaker(
    speakerImage:
        "https://res.cloudinary.com/startup-grind/image/upload/c_fill,dpr_2.0,f_auto,g_center,h_250,q_auto:good,w_250/v1/gcs/platform-data-goog/events/rihanna_kedir.jpeg",
    speakerName: "Rihanna Kedir",
  ),
  Speaker(
    speakerImage:
        "https://res.cloudinary.com/startup-grind/image/upload/c_fill,dpr_2.0,f_auto,g_center,h_250,q_auto:good,w_250/v1/gcs/platform-data-goog/events/RenukaKelkar.jpeg",
    speakerName: "Renuka Kelkar",
  ),
  Speaker(
    speakerImage:
        "https://res.cloudinary.com/startup-grind/image/upload/c_fill,dpr_2.0,f_auto,g_center,h_250,q_auto:good,w_250/v1/gcs/platform-data-goog/events/PoojaBhaumik.jpeg",
    speakerName: "Pooja Bhaumik",
  ),
  Speaker(
    speakerImage:
        "https://res.cloudinary.com/startup-grind/image/upload/c_fill,dpr_2.0,f_auto,g_center,h_250,q_auto:good,w_250/v1/gcs/platform-data-goog/events/DhruvaShastri-2.jpeg",
    speakerName: "Dhruva Shastri",
  ),
  Speaker(
    speakerImage:
        "https://res.cloudinary.com/startup-grind/image/upload/c_fill,dpr_2.0,f_auto,g_center,h_250,q_auto:good,w_250/v1/gcs/platform-data-goog/events/KhushbuThakker.jpeg",
    speakerName: "Khushbu Thakker",
  ),
  Speaker(
    speakerImage:
        "https://res.cloudinary.com/startup-grind/image/upload/c_fill,dpr_2.0,f_auto,g_center,h_250,q_auto:good,w_250/v1/gcs/platform-data-goog/events/sarah-fullmer.jpeg",
    speakerName: "Sarah Fullmer",
  ),
  Speaker(
    speakerImage:
        "https://res.cloudinary.com/startup-grind/image/upload/c_fill,dpr_2.0,f_auto,g_center,h_250,q_auto:good,w_250/v1/gcs/platform-data-goog/events/MerveArslan-e1616960189242.jpeg",
    speakerName: "Merve Arslan",
  ),
  Speaker(
    speakerImage:
        "https://res.cloudinary.com/startup-grind/image/upload/c_fill,dpr_2.0,f_auto,g_center,h_250,q_auto:good,w_250/v1/gcs/platform-data-goog/events/Anna-Domashych.jpeg",
    speakerName: "Anna Domashych",
  ),
  Speaker(
    speakerImage:
        "https://res.cloudinary.com/startup-grind/image/upload/c_fill,dpr_2.0,f_auto,g_center,h_250,q_auto:good,w_250/v1/gcs/platform-data-goog/events/Teresa-Wu-e1616960158583.jpeg",
    speakerName: "Teresa Wu",
  ),
  Speaker(
    speakerImage:
        "https://res.cloudinary.com/startup-grind/image/upload/c_fill,dpr_2.0,f_auto,g_center,h_250,q_auto:good,w_250/v1/gcs/platform-data-goog/events/Anagha.jpeg",
    speakerName: "Anagha Sivadas",
  ),
  Speaker(
    speakerImage:
        "https://res.cloudinary.com/startup-grind/image/upload/c_fill,dpr_2.0,f_auto,g_center,h_250,q_auto:good,w_250/v1/gcs/platform-data-goog/events/Aakanksha-Shivani-e1616960220234.jpeg",
    speakerName: "Aakanksha Shivani",
  ),
  Speaker(
    speakerImage:
        "https://res.cloudinary.com/startup-grind/image/upload/c_fill,dpr_2.0,f_auto,g_center,h_250,q_auto:good,w_250/v1/gcs/platform-data-goog/events/Juna-Salviati.jpeg",
    speakerName: "Juna Salviati",
  ),
  Speaker(
    speakerImage:
        "https://res.cloudinary.com/startup-grind/image/upload/c_fill,dpr_2.0,f_auto,g_center,h_250,q_auto:good,w_250/v1/gcs/platform-data-goog/events/mahtab_tadayon.jpeg",
    speakerName: "Mahtab Tadayon",
  ),
  Speaker(
    speakerImage:
        "https://res.cloudinary.com/startup-grind/image/upload/c_fill,dpr_2.0,f_auto,g_center,h_250,q_auto:good,w_250/v1/gcs/platform-data-goog/events/Mais-Alheraki-resized-300x168.jpeg",
    speakerName: "Mais Alheraki",
  ),
  Speaker(
    speakerImage:
        "https://res.cloudinary.com/startup-grind/image/upload/c_fill,dpr_2.0,f_auto,g_center,h_250,q_auto:good,w_250/v1/gcs/platform-data-goog/events/kamal-shree-resized-215x300.jpeg",
    speakerName: "Kamal Shree",
  ),
  Speaker(
    speakerImage:
        "https://res.cloudinary.com/startup-grind/image/upload/c_fill,dpr_2.0,f_auto,g_center,h_250,q_auto:good,w_250/v1/gcs/platform-data-goog/events/barbara_tallent-resized-265x300.jpeg",
    speakerName: "Barbara Tallent",
  ),
];
