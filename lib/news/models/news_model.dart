class NewsData {
  String? title;
  String? author;
  String? content;
  String? urlToImage;
  String? date;

  NewsData(
    this.title,
    this.author,
    this.content,
    this.date,
    this.urlToImage,
  );

  static List<NewsData> breakingNewsData = [
    NewsData(
        "Flutter Soru Cevap Buluşması Başladı!",
        "Ardahan Gökhan",
        "Etkinlik Linki:https://us02web.zoom.us/ \n Meeting ID: \nPasscode: \n⏰Saat: 21:00 ",
        "2023-04-08",
        "https://images-ext-1.discordapp.net/external/jsoKsVVDjUc0PFBJ3NM2SVlYsOIoUNg7Q1eme6x-Mq4/%3Fv%3D1.2/https/oyunveuygulamaakademisi.com/file/show/media/images/academy_program/7/630e09ff38e37.png"),
    NewsData(
        "App Jam kazananı belli oldu!",
        "M.Oğuz Topaloğlu",
        "Kazanan takım Coursemate oldu.",
        "2023-04-08",
        "https://images-ext-2.discordapp.net/external/zCLDKaKIZbwyXGilvt_H0lorgWwHI7gYJJ3DDcRyj00/%3Fv%3D1.2/https/oyunveuygulamaakademisi.com/file/show/media/images/academy_program/2/616407b6162f2.png"),
    NewsData(
        "Yarın Unity Soru Cevap Buluşması Var!",
        "Z.Şevval Bozdağ",
        "Etkinlik Linki:https://us02web.zoom.us/ \n Meeting ID: \nPasscode: \n⏰Saat: 21:00",
        "2023-04-08",
        "https://images-ext-1.discordapp.net/external/k7NJf8pLnhso9TVi-HO2iIw2a-VKOIivHzyyvCxkNYs/https/oyunveuygulamaakademisi.com/assets/site/oua/assets/sites/images/apply-images/apply_img_9.png?width=720&height=350"),
  ];

  static List<NewsData> recentNewsData = [
    NewsData(
        "Ideathon Kazananları belli oldu. İşte Bu Takımlar!",
        "Oyun ve Uygulama Akademisi",
        "Deprem ve afet yönetimi alanında bir ideathon düzenlenmiştir. Yarışma, depremlerin neden olduğu zararları azaltmak veya önlemek için yeni teknolojik çözümler ve stratejiler geliştirmeyi amaçlamaktadır. Yarışmaya katılan ekipler, özgün ve yenilikçi fikirlerini sunmuş ve jüri tarafından değerlendirilmiştir. ",
        "2023-04-08",
        "https://images-ext-1.discordapp.net/external/62PaYUxfqMOwFiZ1A1B_2VtZtPdlJFo2-OmJb-3raKM/https/oyunveuygulamaakademisi.com/assets/site/oua/assets/sites/images/apply-images/apply_img_5.png"),
    NewsData(
        "Psikolojik Bakım Seansı",
        "Numan Kaya",
        "Merhabalar dün gerçekleştirdiğimiz Psikolojik Bakım Seansı’na katılan herkese çok teşekkür ederiz. Eğer izlemediyseniz etkinlik kaydına buradan ulaşabilirsiniz. Uzman Psikoloğumuz Sibel Karamaraş’ın mesajını sizlere iletiyoruz: Öncelikle afet psikolojisi ile ilgili başlayayım: Türk psikiyatri derneği sosyal medyayı bu anlamda etkili kullanıyor. Onun paylaşımlarını inceleyebilirsiniz.",
        "2023-04-08",
        "https://images-ext-2.discordapp.net/external/zCLDKaKIZbwyXGilvt_H0lorgWwHI7gYJJ3DDcRyj00/%3Fv%3D1.2/https/oyunveuygulamaakademisi.com/file/show/media/images/academy_program/2/616407b6162f2.png"),
    NewsData(
        "Berna Aksoy ile Girişimciler için İK Canlı Yayını",
        "Mürüvvet Topsakal",
        "Arkadaşlar merhaba, bildiğiniz gibi deprem nedeniyle tüm etkinliklerimize ara vermiştik ancak rutinlere dönme noktasında ilk aksiyonu bu akşam alıyoruz. Bölgeden başka şehirlere de göç olduğundan ve iş-staj arayan arkadaşlarımız olabileceğinden İK eğitmenlerimiz ile olan canlı etkinlikleri önceliklendirdik. Bu akşam 20.00'de insan kaynaklarına dair merak ettiklerinizi, CV hazırlama ve mülakat sürecine dair tüm sorularınızı eğitmenlerimize sorabilirsiniz.",
        "2023-04-08",
        "https://images-ext-1.discordapp.net/external/jsoKsVVDjUc0PFBJ3NM2SVlYsOIoUNg7Q1eme6x-Mq4/%3Fv%3D1.2/https/oyunveuygulamaakademisi.com/file/show/media/images/academy_program/7/630e09ff38e37.png"),
    NewsData(
        "Değerlendirme Formu",
        "Oyun ve Uygulama Akademisi",
        "Merhabalar, Temel Girişimcilik Soru Cevap Etkinliğimiz sona erdi! Katılan herkese çok teşekkür ederiz🤗 Geri bildirim formumuzu doldurmayı unutmayın🙏🏾",
        "2023-04-08",
        "https://images-ext-2.discordapp.net/external/EFzpg75XNvb8ce-3mYfhaw1_VJeAfztDAUIB5Hh8xTw/https/oyunveuygulamaakademisi.com/assets/site/oua/assets/sites/images/apply-images/apply_img_4.png"),
  ];
}
