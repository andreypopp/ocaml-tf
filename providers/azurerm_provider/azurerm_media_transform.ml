(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_media_transform__output__audio_analyzer_preset = {
  audio_analysis_mode : string prop option; [@option]
      (** audio_analysis_mode *)
  audio_language : string prop option; [@option]
      (** audio_language *)
  experimental_options : (string * string prop) list option; [@option]
      (** experimental_options *)
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__audio_analyzer_preset *)

type azurerm_media_transform__output__builtin_preset__preset_configuration = {
  complexity : string prop option; [@option]  (** complexity *)
  interleave_output : string prop option; [@option]
      (** interleave_output *)
  key_frame_interval_in_seconds : float prop option; [@option]
      (** key_frame_interval_in_seconds *)
  max_bitrate_bps : float prop option; [@option]
      (** max_bitrate_bps *)
  max_height : float prop option; [@option]  (** max_height *)
  max_layers : float prop option; [@option]  (** max_layers *)
  min_bitrate_bps : float prop option; [@option]
      (** min_bitrate_bps *)
  min_height : float prop option; [@option]  (** min_height *)
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__builtin_preset__preset_configuration *)

type azurerm_media_transform__output__builtin_preset = {
  preset_name : string prop;  (** preset_name *)
  preset_configuration :
    azurerm_media_transform__output__builtin_preset__preset_configuration
    list;
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__builtin_preset *)

type azurerm_media_transform__output__custom_preset__codec__aac_audio = {
  bitrate : float prop option; [@option]  (** bitrate *)
  channels : float prop option; [@option]  (** channels *)
  label : string prop option; [@option]  (** label *)
  profile : string prop option; [@option]  (** profile *)
  sampling_rate : float prop option; [@option]  (** sampling_rate *)
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset__codec__aac_audio *)

type azurerm_media_transform__output__custom_preset__codec__copy_audio = {
  label : string prop option; [@option]  (** label *)
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset__codec__copy_audio *)

type azurerm_media_transform__output__custom_preset__codec__copy_video = {
  label : string prop option; [@option]  (** label *)
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset__codec__copy_video *)

type azurerm_media_transform__output__custom_preset__codec__dd_audio = {
  bitrate : float prop option; [@option]  (** bitrate *)
  channels : float prop option; [@option]  (** channels *)
  label : string prop option; [@option]  (** label *)
  sampling_rate : float prop option; [@option]  (** sampling_rate *)
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset__codec__dd_audio *)

type azurerm_media_transform__output__custom_preset__codec__h264_video__layer = {
  adaptive_b_frame_enabled : bool prop option; [@option]
      (** adaptive_b_frame_enabled *)
  b_frames : float prop option; [@option]  (** b_frames *)
  bitrate : float prop;  (** bitrate *)
  buffer_window : string prop option; [@option]  (** buffer_window *)
  crf : float prop option; [@option]  (** crf *)
  entropy_mode : string prop option; [@option]  (** entropy_mode *)
  frame_rate : string prop option; [@option]  (** frame_rate *)
  height : string prop option; [@option]  (** height *)
  label : string prop option; [@option]  (** label *)
  level : string prop option; [@option]  (** level *)
  max_bitrate : float prop option; [@option]  (** max_bitrate *)
  profile : string prop option; [@option]  (** profile *)
  reference_frames : float prop option; [@option]
      (** reference_frames *)
  slices : float prop option; [@option]  (** slices *)
  width : string prop option; [@option]  (** width *)
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset__codec__h264_video__layer *)

type azurerm_media_transform__output__custom_preset__codec__h264_video = {
  complexity : string prop option; [@option]  (** complexity *)
  key_frame_interval : string prop option; [@option]
      (** key_frame_interval *)
  label : string prop option; [@option]  (** label *)
  rate_control_mode : string prop option; [@option]
      (** rate_control_mode *)
  scene_change_detection_enabled : bool prop option; [@option]
      (** scene_change_detection_enabled *)
  stretch_mode : string prop option; [@option]  (** stretch_mode *)
  sync_mode : string prop option; [@option]  (** sync_mode *)
  layer :
    azurerm_media_transform__output__custom_preset__codec__h264_video__layer
    list;
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset__codec__h264_video *)

type azurerm_media_transform__output__custom_preset__codec__h265_video__layer = {
  adaptive_b_frame_enabled : bool prop option; [@option]
      (** adaptive_b_frame_enabled *)
  b_frames : float prop option; [@option]  (** b_frames *)
  bitrate : float prop;  (** bitrate *)
  buffer_window : string prop option; [@option]  (** buffer_window *)
  crf : float prop option; [@option]  (** crf *)
  frame_rate : string prop option; [@option]  (** frame_rate *)
  height : string prop option; [@option]  (** height *)
  label : string prop option; [@option]  (** label *)
  level : string prop option; [@option]  (** level *)
  max_bitrate : float prop option; [@option]  (** max_bitrate *)
  profile : string prop option; [@option]  (** profile *)
  reference_frames : float prop option; [@option]
      (** reference_frames *)
  slices : float prop option; [@option]  (** slices *)
  width : string prop option; [@option]  (** width *)
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset__codec__h265_video__layer *)

type azurerm_media_transform__output__custom_preset__codec__h265_video = {
  complexity : string prop option; [@option]  (** complexity *)
  key_frame_interval : string prop option; [@option]
      (** key_frame_interval *)
  label : string prop option; [@option]  (** label *)
  scene_change_detection_enabled : bool prop option; [@option]
      (** scene_change_detection_enabled *)
  stretch_mode : string prop option; [@option]  (** stretch_mode *)
  sync_mode : string prop option; [@option]  (** sync_mode *)
  layer :
    azurerm_media_transform__output__custom_preset__codec__h265_video__layer
    list;
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset__codec__h265_video *)

type azurerm_media_transform__output__custom_preset__codec__jpg_image__layer = {
  height : string prop option; [@option]  (** height *)
  label : string prop option; [@option]  (** label *)
  quality : float prop option; [@option]  (** quality *)
  width : string prop option; [@option]  (** width *)
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset__codec__jpg_image__layer *)

type azurerm_media_transform__output__custom_preset__codec__jpg_image = {
  key_frame_interval : string prop option; [@option]
      (** key_frame_interval *)
  label : string prop option; [@option]  (** label *)
  range : string prop option; [@option]  (** range *)
  sprite_column : float prop option; [@option]  (** sprite_column *)
  start : string prop;  (** start *)
  step : string prop option; [@option]  (** step *)
  stretch_mode : string prop option; [@option]  (** stretch_mode *)
  sync_mode : string prop option; [@option]  (** sync_mode *)
  layer :
    azurerm_media_transform__output__custom_preset__codec__jpg_image__layer
    list;
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset__codec__jpg_image *)

type azurerm_media_transform__output__custom_preset__codec__png_image__layer = {
  height : string prop option; [@option]  (** height *)
  label : string prop option; [@option]  (** label *)
  width : string prop option; [@option]  (** width *)
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset__codec__png_image__layer *)

type azurerm_media_transform__output__custom_preset__codec__png_image = {
  key_frame_interval : string prop option; [@option]
      (** key_frame_interval *)
  label : string prop option; [@option]  (** label *)
  range : string prop option; [@option]  (** range *)
  start : string prop;  (** start *)
  step : string prop option; [@option]  (** step *)
  stretch_mode : string prop option; [@option]  (** stretch_mode *)
  sync_mode : string prop option; [@option]  (** sync_mode *)
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
  height : string prop option; [@option]  (** height *)
  left : string prop option; [@option]  (** left *)
  top : string prop option; [@option]  (** top *)
  width : string prop option; [@option]  (** width *)
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset__filter__crop_rectangle *)

type azurerm_media_transform__output__custom_preset__filter__deinterlace = {
  mode : string prop option; [@option]  (** mode *)
  parity : string prop option; [@option]  (** parity *)
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset__filter__deinterlace *)

type azurerm_media_transform__output__custom_preset__filter__fade_in = {
  duration : string prop;  (** duration *)
  fade_color : string prop;  (** fade_color *)
  start : string prop option; [@option]  (** start *)
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset__filter__fade_in *)

type azurerm_media_transform__output__custom_preset__filter__fade_out = {
  duration : string prop;  (** duration *)
  fade_color : string prop;  (** fade_color *)
  start : string prop option; [@option]  (** start *)
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset__filter__fade_out *)

type azurerm_media_transform__output__custom_preset__filter__overlay__audio = {
  audio_gain_level : float prop option; [@option]
      (** audio_gain_level *)
  end_ : string prop option; [@option] [@key "end"]  (** end *)
  fade_in_duration : string prop option; [@option]
      (** fade_in_duration *)
  fade_out_duration : string prop option; [@option]
      (** fade_out_duration *)
  input_label : string prop;  (** input_label *)
  start : string prop option; [@option]  (** start *)
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset__filter__overlay__audio *)

type azurerm_media_transform__output__custom_preset__filter__overlay__video__crop_rectangle = {
  height : string prop option; [@option]  (** height *)
  left : string prop option; [@option]  (** left *)
  top : string prop option; [@option]  (** top *)
  width : string prop option; [@option]  (** width *)
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset__filter__overlay__video__crop_rectangle *)

type azurerm_media_transform__output__custom_preset__filter__overlay__video__position = {
  height : string prop option; [@option]  (** height *)
  left : string prop option; [@option]  (** left *)
  top : string prop option; [@option]  (** top *)
  width : string prop option; [@option]  (** width *)
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset__filter__overlay__video__position *)

type azurerm_media_transform__output__custom_preset__filter__overlay__video = {
  audio_gain_level : float prop option; [@option]
      (** audio_gain_level *)
  end_ : string prop option; [@option] [@key "end"]  (** end *)
  fade_in_duration : string prop option; [@option]
      (** fade_in_duration *)
  fade_out_duration : string prop option; [@option]
      (** fade_out_duration *)
  input_label : string prop;  (** input_label *)
  opacity : float prop option; [@option]  (** opacity *)
  start : string prop option; [@option]  (** start *)
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
  rotation : string prop option; [@option]  (** rotation *)
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
  filename_pattern : string prop;  (** filename_pattern *)
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset__format__jpg *)

type azurerm_media_transform__output__custom_preset__format__mp4__output_file = {
  labels : string prop list;  (** labels *)
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset__format__mp4__output_file *)

type azurerm_media_transform__output__custom_preset__format__mp4 = {
  filename_pattern : string prop;  (** filename_pattern *)
  output_file :
    azurerm_media_transform__output__custom_preset__format__mp4__output_file
    list;
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset__format__mp4 *)

type azurerm_media_transform__output__custom_preset__format__png = {
  filename_pattern : string prop;  (** filename_pattern *)
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset__format__png *)

type azurerm_media_transform__output__custom_preset__format__transport_stream__output_file = {
  labels : string prop list;  (** labels *)
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__custom_preset__format__transport_stream__output_file *)

type azurerm_media_transform__output__custom_preset__format__transport_stream = {
  filename_pattern : string prop;  (** filename_pattern *)
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
  experimental_options : (string * string prop) list option;
      [@option]
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
  analysis_resolution : string prop option; [@option]
      (** analysis_resolution *)
  blur_type : string prop option; [@option]  (** blur_type *)
  experimental_options : (string * string prop) list option;
      [@option]
      (** experimental_options *)
  face_redactor_mode : string prop option; [@option]
      (** face_redactor_mode *)
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__face_detector_preset *)

type azurerm_media_transform__output__video_analyzer_preset = {
  audio_analysis_mode : string prop option; [@option]
      (** audio_analysis_mode *)
  audio_language : string prop option; [@option]
      (** audio_language *)
  experimental_options : (string * string prop) list option;
      [@option]
      (** experimental_options *)
  insights_type : string prop option; [@option]  (** insights_type *)
}
[@@deriving yojson_of]
(** azurerm_media_transform__output__video_analyzer_preset *)

type azurerm_media_transform__output = {
  on_error_action : string prop option; [@option]
      (** on_error_action *)
  relative_priority : string prop option; [@option]
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
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_media_transform__timeouts *)

type azurerm_media_transform = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  media_services_account_name : string prop;
      (** media_services_account_name *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
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
