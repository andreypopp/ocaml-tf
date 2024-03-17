(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_media_transform__output__audio_analyzer_preset = {
  audio_analysis_mode : string option; [@option]
      (** audio_analysis_mode *)
  audio_language : string option; [@option]  (** audio_language *)
  experimental_options : (string * string) list option; [@option]
      (** experimental_options *)
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__audio_analyzer_preset *)

type azurerm_media_transform__output__builtin_preset__preset_configuration = {
  complexity : string option; [@option]  (** complexity *)
  interleave_output : string option; [@option]
      (** interleave_output *)
  key_frame_interval_in_seconds : float option; [@option]
      (** key_frame_interval_in_seconds *)
  max_bitrate_bps : float option; [@option]  (** max_bitrate_bps *)
  max_height : float option; [@option]  (** max_height *)
  max_layers : float option; [@option]  (** max_layers *)
  min_bitrate_bps : float option; [@option]  (** min_bitrate_bps *)
  min_height : float option; [@option]  (** min_height *)
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__builtin_preset__preset_configuration *)

type azurerm_media_transform__output__builtin_preset = {
  preset_name : string;  (** preset_name *)
  preset_configuration :
    azurerm_media_transform__output__builtin_preset__preset_configuration
    list;
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__builtin_preset *)

type azurerm_media_transform__output__custom_preset__codec__aac_audio = {
  bitrate : float option; [@option]  (** bitrate *)
  channels : float option; [@option]  (** channels *)
  label : string option; [@option]  (** label *)
  profile : string option; [@option]  (** profile *)
  sampling_rate : float option; [@option]  (** sampling_rate *)
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset__codec__aac_audio *)

type azurerm_media_transform__output__custom_preset__codec__copy_audio = {
  label : string option; [@option]  (** label *)
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset__codec__copy_audio *)

type azurerm_media_transform__output__custom_preset__codec__copy_video = {
  label : string option; [@option]  (** label *)
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset__codec__copy_video *)

type azurerm_media_transform__output__custom_preset__codec__dd_audio = {
  bitrate : float option; [@option]  (** bitrate *)
  channels : float option; [@option]  (** channels *)
  label : string option; [@option]  (** label *)
  sampling_rate : float option; [@option]  (** sampling_rate *)
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset__codec__dd_audio *)

type azurerm_media_transform__output__custom_preset__codec__h264_video__layer = {
  adaptive_b_frame_enabled : bool option; [@option]
      (** adaptive_b_frame_enabled *)
  b_frames : float option; [@option]  (** b_frames *)
  bitrate : float;  (** bitrate *)
  buffer_window : string option; [@option]  (** buffer_window *)
  crf : float option; [@option]  (** crf *)
  entropy_mode : string option; [@option]  (** entropy_mode *)
  frame_rate : string option; [@option]  (** frame_rate *)
  height : string option; [@option]  (** height *)
  label : string option; [@option]  (** label *)
  level : string option; [@option]  (** level *)
  max_bitrate : float option; [@option]  (** max_bitrate *)
  profile : string option; [@option]  (** profile *)
  reference_frames : float option; [@option]  (** reference_frames *)
  slices : float option; [@option]  (** slices *)
  width : string option; [@option]  (** width *)
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset__codec__h264_video__layer *)

type azurerm_media_transform__output__custom_preset__codec__h264_video = {
  complexity : string option; [@option]  (** complexity *)
  key_frame_interval : string option; [@option]
      (** key_frame_interval *)
  label : string option; [@option]  (** label *)
  rate_control_mode : string option; [@option]
      (** rate_control_mode *)
  scene_change_detection_enabled : bool option; [@option]
      (** scene_change_detection_enabled *)
  stretch_mode : string option; [@option]  (** stretch_mode *)
  sync_mode : string option; [@option]  (** sync_mode *)
  layer :
    azurerm_media_transform__output__custom_preset__codec__h264_video__layer
    list;
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset__codec__h264_video *)

type azurerm_media_transform__output__custom_preset__codec__h265_video__layer = {
  adaptive_b_frame_enabled : bool option; [@option]
      (** adaptive_b_frame_enabled *)
  b_frames : float option; [@option]  (** b_frames *)
  bitrate : float;  (** bitrate *)
  buffer_window : string option; [@option]  (** buffer_window *)
  crf : float option; [@option]  (** crf *)
  frame_rate : string option; [@option]  (** frame_rate *)
  height : string option; [@option]  (** height *)
  label : string option; [@option]  (** label *)
  level : string option; [@option]  (** level *)
  max_bitrate : float option; [@option]  (** max_bitrate *)
  profile : string option; [@option]  (** profile *)
  reference_frames : float option; [@option]  (** reference_frames *)
  slices : float option; [@option]  (** slices *)
  width : string option; [@option]  (** width *)
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset__codec__h265_video__layer *)

type azurerm_media_transform__output__custom_preset__codec__h265_video = {
  complexity : string option; [@option]  (** complexity *)
  key_frame_interval : string option; [@option]
      (** key_frame_interval *)
  label : string option; [@option]  (** label *)
  scene_change_detection_enabled : bool option; [@option]
      (** scene_change_detection_enabled *)
  stretch_mode : string option; [@option]  (** stretch_mode *)
  sync_mode : string option; [@option]  (** sync_mode *)
  layer :
    azurerm_media_transform__output__custom_preset__codec__h265_video__layer
    list;
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset__codec__h265_video *)

type azurerm_media_transform__output__custom_preset__codec__jpg_image__layer = {
  height : string option; [@option]  (** height *)
  label : string option; [@option]  (** label *)
  quality : float option; [@option]  (** quality *)
  width : string option; [@option]  (** width *)
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset__codec__jpg_image__layer *)

type azurerm_media_transform__output__custom_preset__codec__jpg_image = {
  key_frame_interval : string option; [@option]
      (** key_frame_interval *)
  label : string option; [@option]  (** label *)
  range : string option; [@option]  (** range *)
  sprite_column : float option; [@option]  (** sprite_column *)
  start : string;  (** start *)
  step : string option; [@option]  (** step *)
  stretch_mode : string option; [@option]  (** stretch_mode *)
  sync_mode : string option; [@option]  (** sync_mode *)
  layer :
    azurerm_media_transform__output__custom_preset__codec__jpg_image__layer
    list;
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset__codec__jpg_image *)

type azurerm_media_transform__output__custom_preset__codec__png_image__layer = {
  height : string option; [@option]  (** height *)
  label : string option; [@option]  (** label *)
  width : string option; [@option]  (** width *)
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset__codec__png_image__layer *)

type azurerm_media_transform__output__custom_preset__codec__png_image = {
  key_frame_interval : string option; [@option]
      (** key_frame_interval *)
  label : string option; [@option]  (** label *)
  range : string option; [@option]  (** range *)
  start : string;  (** start *)
  step : string option; [@option]  (** step *)
  stretch_mode : string option; [@option]  (** stretch_mode *)
  sync_mode : string option; [@option]  (** sync_mode *)
  layer :
    azurerm_media_transform__output__custom_preset__codec__png_image__layer
    list;
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset__codec__png_image *)

type azurerm_media_transform__output__custom_preset__codec = {
  aac_audio :
    azurerm_media_transform__output__custom_preset__codec__aac_audio
    list;
  copy_audio :
    azurerm_media_transform__output__custom_preset__codec__copy_audio
    list;
  copy_video :
    azurerm_media_transform__output__custom_preset__codec__copy_video
    list;
  dd_audio :
    azurerm_media_transform__output__custom_preset__codec__dd_audio
    list;
  h264_video :
    azurerm_media_transform__output__custom_preset__codec__h264_video
    list;
  h265_video :
    azurerm_media_transform__output__custom_preset__codec__h265_video
    list;
  jpg_image :
    azurerm_media_transform__output__custom_preset__codec__jpg_image
    list;
  png_image :
    azurerm_media_transform__output__custom_preset__codec__png_image
    list;
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset__codec *)

type azurerm_media_transform__output__custom_preset__filter__crop_rectangle = {
  height : string option; [@option]  (** height *)
  left : string option; [@option]  (** left *)
  top : string option; [@option]  (** top *)
  width : string option; [@option]  (** width *)
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset__filter__crop_rectangle *)

type azurerm_media_transform__output__custom_preset__filter__deinterlace = {
  mode : string option; [@option]  (** mode *)
  parity : string option; [@option]  (** parity *)
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset__filter__deinterlace *)

type azurerm_media_transform__output__custom_preset__filter__fade_in = {
  duration : string;  (** duration *)
  fade_color : string;  (** fade_color *)
  start : string option; [@option]  (** start *)
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset__filter__fade_in *)

type azurerm_media_transform__output__custom_preset__filter__fade_out = {
  duration : string;  (** duration *)
  fade_color : string;  (** fade_color *)
  start : string option; [@option]  (** start *)
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset__filter__fade_out *)

type azurerm_media_transform__output__custom_preset__filter__overlay__audio = {
  audio_gain_level : float option; [@option]  (** audio_gain_level *)
  end_ : string option; [@option] [@key "end"]  (** end *)
  fade_in_duration : string option; [@option]
      (** fade_in_duration *)
  fade_out_duration : string option; [@option]
      (** fade_out_duration *)
  input_label : string;  (** input_label *)
  start : string option; [@option]  (** start *)
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset__filter__overlay__audio *)

type azurerm_media_transform__output__custom_preset__filter__overlay__video__crop_rectangle = {
  height : string option; [@option]  (** height *)
  left : string option; [@option]  (** left *)
  top : string option; [@option]  (** top *)
  width : string option; [@option]  (** width *)
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset__filter__overlay__video__crop_rectangle *)

type azurerm_media_transform__output__custom_preset__filter__overlay__video__position = {
  height : string option; [@option]  (** height *)
  left : string option; [@option]  (** left *)
  top : string option; [@option]  (** top *)
  width : string option; [@option]  (** width *)
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset__filter__overlay__video__position *)

type azurerm_media_transform__output__custom_preset__filter__overlay__video = {
  audio_gain_level : float option; [@option]  (** audio_gain_level *)
  end_ : string option; [@option] [@key "end"]  (** end *)
  fade_in_duration : string option; [@option]
      (** fade_in_duration *)
  fade_out_duration : string option; [@option]
      (** fade_out_duration *)
  input_label : string;  (** input_label *)
  opacity : float option; [@option]  (** opacity *)
  start : string option; [@option]  (** start *)
  crop_rectangle :
    azurerm_media_transform__output__custom_preset__filter__overlay__video__crop_rectangle
    list;
  position :
    azurerm_media_transform__output__custom_preset__filter__overlay__video__position
    list;
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset__filter__overlay__video *)

type azurerm_media_transform__output__custom_preset__filter__overlay = {
  audio :
    azurerm_media_transform__output__custom_preset__filter__overlay__audio
    list;
  video :
    azurerm_media_transform__output__custom_preset__filter__overlay__video
    list;
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset__filter__overlay *)

type azurerm_media_transform__output__custom_preset__filter = {
  rotation : string option; [@option]  (** rotation *)
  crop_rectangle :
    azurerm_media_transform__output__custom_preset__filter__crop_rectangle
    list;
  deinterlace :
    azurerm_media_transform__output__custom_preset__filter__deinterlace
    list;
  fade_in :
    azurerm_media_transform__output__custom_preset__filter__fade_in
    list;
  fade_out :
    azurerm_media_transform__output__custom_preset__filter__fade_out
    list;
  overlay :
    azurerm_media_transform__output__custom_preset__filter__overlay
    list;
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset__filter *)

type azurerm_media_transform__output__custom_preset__format__jpg = {
  filename_pattern : string;  (** filename_pattern *)
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset__format__jpg *)

type azurerm_media_transform__output__custom_preset__format__mp4__output_file = {
  labels : string list;  (** labels *)
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset__format__mp4__output_file *)

type azurerm_media_transform__output__custom_preset__format__mp4 = {
  filename_pattern : string;  (** filename_pattern *)
  output_file :
    azurerm_media_transform__output__custom_preset__format__mp4__output_file
    list;
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset__format__mp4 *)

type azurerm_media_transform__output__custom_preset__format__png = {
  filename_pattern : string;  (** filename_pattern *)
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset__format__png *)

type azurerm_media_transform__output__custom_preset__format__transport_stream__output_file = {
  labels : string list;  (** labels *)
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset__format__transport_stream__output_file *)

type azurerm_media_transform__output__custom_preset__format__transport_stream = {
  filename_pattern : string;  (** filename_pattern *)
  output_file :
    azurerm_media_transform__output__custom_preset__format__transport_stream__output_file
    list;
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset__format__transport_stream *)

type azurerm_media_transform__output__custom_preset__format = {
  jpg :
    azurerm_media_transform__output__custom_preset__format__jpg list;
  mp4 :
    azurerm_media_transform__output__custom_preset__format__mp4 list;
  png :
    azurerm_media_transform__output__custom_preset__format__png list;
  transport_stream :
    azurerm_media_transform__output__custom_preset__format__transport_stream
    list;
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset__format *)

type azurerm_media_transform__output__custom_preset = {
  experimental_options : (string * string) list option; [@option]
      (** experimental_options *)
  codec : azurerm_media_transform__output__custom_preset__codec list;
  filter :
    azurerm_media_transform__output__custom_preset__filter list;
  format :
    azurerm_media_transform__output__custom_preset__format list;
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset *)

type azurerm_media_transform__output__face_detector_preset = {
  analysis_resolution : string option; [@option]
      (** analysis_resolution *)
  blur_type : string option; [@option]  (** blur_type *)
  experimental_options : (string * string) list option; [@option]
      (** experimental_options *)
  face_redactor_mode : string option; [@option]
      (** face_redactor_mode *)
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__face_detector_preset *)

type azurerm_media_transform__output__video_analyzer_preset = {
  audio_analysis_mode : string option; [@option]
      (** audio_analysis_mode *)
  audio_language : string option; [@option]  (** audio_language *)
  experimental_options : (string * string) list option; [@option]
      (** experimental_options *)
  insights_type : string option; [@option]  (** insights_type *)
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__video_analyzer_preset *)

type azurerm_media_transform__output = {
  on_error_action : string option; [@option]  (** on_error_action *)
  relative_priority : string option; [@option]
      (** relative_priority *)
  audio_analyzer_preset :
    azurerm_media_transform__output__audio_analyzer_preset list;
  builtin_preset :
    azurerm_media_transform__output__builtin_preset list;
  custom_preset :
    azurerm_media_transform__output__custom_preset list;
  face_detector_preset :
    azurerm_media_transform__output__face_detector_preset list;
  video_analyzer_preset :
    azurerm_media_transform__output__video_analyzer_preset list;
}
[@@deriving yojson_of]
(** azurerm_media_transform__output *)

type azurerm_media_transform__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_media_transform__timeouts *)

type azurerm_media_transform = {
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  media_services_account_name : string;
      (** media_services_account_name *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  output : azurerm_media_transform__output list;
  timeouts : azurerm_media_transform__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_media_transform *)

let azurerm_media_transform ?description ?id ?timeouts
    ~media_services_account_name ~name ~resource_group_name ~output
    __resource_id =
  let __resource_type = "azurerm_media_transform" in
  let __resource =
    {
      description;
      id;
      media_services_account_name;
      name;
      resource_group_name;
      output;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_media_transform __resource);
  ()
