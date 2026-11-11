abstract interface class Playable {
  void play();
}

abstract interface class Downloading {
  void download();
}

class MusicTrack implements Playable, Downloading {
  String title;

  MusicTrack(this.title);

  @override
  void play() {
    print('Играет музыка: $title');
  }

  @override
  void download() {
    print('Скачивается: $title');
  }
}

void main() {
  MusicTrack track1 = MusicTrack('ТИЛ');

  track1.play();
  track1.download();
}