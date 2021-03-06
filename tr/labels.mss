#label[zoom >= 13] {
  text-name: @text_name;
  text-face-name: @text_face_name;
  text-fill: @text_fill;
  text-placement: @text_placement;
  text-transform: @text_transform;

  [zoom = 13] { text-size: 11; text-wrap-width: 50px; }
  [zoom = 14] { text-size: 15; text-character-spacing: 2; text-line-spacing: 6; text-wrap-width: 70px;}
  [zoom = 15] { text-size: 20; text-character-spacing: 2; text-line-spacing: 6; text-wrap-width: 100px;}
  [zoom >= 16] { text-size: 40; text-character-spacing: 4; text-line-spacing: 12; text-wrap-width: 100px;}
}
