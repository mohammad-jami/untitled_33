class Media {
  void play() {
    print("Playing media...");
  }
}


class Song extends Media {
  String artist;

  Song(this.artist);

  @override
  void play() {
    print("Playing song by $artist...");
  }
}


abstract class ClassName{}

void main() {

  Media media = Media();

  Song song = Song("Eminem");

  media.play();

  song.play();
}

// From my home

