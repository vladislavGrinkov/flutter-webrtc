Map<String, dynamic> configuration = {
  "iceServers": [
    {"url": "stun:stun.l.google.com:19302"},
    {"url": "stun:stun1.l.google.com:19302"},
  ]
};

Map<String, dynamic> offerSdpConstraints = {
  "mandatory": {
    "OfferToReceiveAudio": true,
    "OfferToReceiveVideo": true,
  },
  "optional": [],
};
