#label[zoom >= 9] {
  text-name: @text_name;
  text-face-name: @text_face_name;
  text-fill: @text_fill;
  text-placement: @text_placement;
  text-transform: @text_transform;

  [zoom = 9] { text-size: 9; text-wrap-width: 50px; }
  [zoom = 10] { text-size: 10; text-wrap-width: 50px; }
  [zoom = 11] { text-size: 13; text-line-spacing: 3; text-wrap-width: 50px; }
  [zoom = 12] { text-size: 15; text-character-spacing: 2; text-line-spacing: 3; text-wrap-width: 75px; }
  [zoom >= 13] { text-size: 20; text-character-spacing: 2; text-line-spacing: 6; text-wrap-width: 100px;}
}
