/// Token
class OAuthToken {
  OAuthToken({
    this.accessToken,
    required this.refreshToken,
    required this.userId,
    this.expiration,
    this.isProviderSignIn = false,
  });

  final String refreshToken;
  final String userId;
  final String? accessToken;
  final DateTime? expiration;
  final bool isProviderSignIn;

  bool get isExpired =>
      expiration != null && DateTime.now().isAfter(expiration!);

  factory OAuthToken.fromMap(Map<String, dynamic> map) {
    return OAuthToken(
      accessToken: map['accessToken'],
      refreshToken: map['refreshToken'],
      userId: map['userId'],
      expiration: DateTime.now().add(
        Duration(
          seconds: map['expiresIn'],
        ),
      ),
      isProviderSignIn: map['isProviderSignIn'] ?? false,
    );
  }

  Map<String, dynamic> toMap() => {
        'accessToken': accessToken,
        'refreshToken': refreshToken,
        'userId': userId,
        'expiresIn': expiration?.millisecondsSinceEpoch,
        'isProviderSignIn': isProviderSignIn,
      };

  @override
  String toString() {
    return 'OAuthToken{\naccess_token:$accessToken,\nrefresh_token:$refreshToken,\nuser_id:$userId,\nexpires_in:$expiration,\nis_provider_sign_in:$isProviderSignIn';
  }
}
