enum FromWho { mine, hers }

class Message {
  final String text;
  final String? imageUrl;
  final FromWho fromWho;

  Message._({required this.text, this.imageUrl, required this.fromWho});

  // Validar si el mensaje me llega nulo
  factory Message({
    required String text,
    String? imageUrl,
    required FromWho fromWho,
  }) {
    if (text.trim().isEmpty && (imageUrl == null || imageUrl.isEmpty)) {
      throw ArgumentError('Message must contain text or an image');
    }
    return Message._(text: text, imageUrl: imageUrl, fromWho: fromWho);
  }
}
