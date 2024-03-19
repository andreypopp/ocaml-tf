(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type output__audio_analyzer_preset

val output__audio_analyzer_preset :
  ?audio_analysis_mode:string prop ->
  ?audio_language:string prop ->
  ?experimental_options:(string * string prop) list ->
  unit ->
  output__audio_analyzer_preset

type output__builtin_preset__preset_configuration

val output__builtin_preset__preset_configuration :
  ?complexity:string prop ->
  ?interleave_output:string prop ->
  ?key_frame_interval_in_seconds:float prop ->
  ?max_bitrate_bps:float prop ->
  ?max_height:float prop ->
  ?max_layers:float prop ->
  ?min_bitrate_bps:float prop ->
  ?min_height:float prop ->
  unit ->
  output__builtin_preset__preset_configuration

type output__builtin_preset

val output__builtin_preset :
  preset_name:string prop ->
  preset_configuration:
    output__builtin_preset__preset_configuration list ->
  unit ->
  output__builtin_preset

type output__custom_preset__codec__aac_audio

val output__custom_preset__codec__aac_audio :
  ?bitrate:float prop ->
  ?channels:float prop ->
  ?label:string prop ->
  ?profile:string prop ->
  ?sampling_rate:float prop ->
  unit ->
  output__custom_preset__codec__aac_audio

type output__custom_preset__codec__copy_audio

val output__custom_preset__codec__copy_audio :
  ?label:string prop ->
  unit ->
  output__custom_preset__codec__copy_audio

type output__custom_preset__codec__copy_video

val output__custom_preset__codec__copy_video :
  ?label:string prop ->
  unit ->
  output__custom_preset__codec__copy_video

type output__custom_preset__codec__dd_audio

val output__custom_preset__codec__dd_audio :
  ?bitrate:float prop ->
  ?channels:float prop ->
  ?label:string prop ->
  ?sampling_rate:float prop ->
  unit ->
  output__custom_preset__codec__dd_audio

type output__custom_preset__codec__h264_video__layer

val output__custom_preset__codec__h264_video__layer :
  ?adaptive_b_frame_enabled:bool prop ->
  ?b_frames:float prop ->
  ?buffer_window:string prop ->
  ?crf:float prop ->
  ?entropy_mode:string prop ->
  ?frame_rate:string prop ->
  ?height:string prop ->
  ?label:string prop ->
  ?level:string prop ->
  ?max_bitrate:float prop ->
  ?profile:string prop ->
  ?reference_frames:float prop ->
  ?slices:float prop ->
  ?width:string prop ->
  bitrate:float prop ->
  unit ->
  output__custom_preset__codec__h264_video__layer

type output__custom_preset__codec__h264_video

val output__custom_preset__codec__h264_video :
  ?complexity:string prop ->
  ?key_frame_interval:string prop ->
  ?label:string prop ->
  ?rate_control_mode:string prop ->
  ?scene_change_detection_enabled:bool prop ->
  ?stretch_mode:string prop ->
  ?sync_mode:string prop ->
  layer:output__custom_preset__codec__h264_video__layer list ->
  unit ->
  output__custom_preset__codec__h264_video

type output__custom_preset__codec__h265_video__layer

val output__custom_preset__codec__h265_video__layer :
  ?adaptive_b_frame_enabled:bool prop ->
  ?b_frames:float prop ->
  ?buffer_window:string prop ->
  ?crf:float prop ->
  ?frame_rate:string prop ->
  ?height:string prop ->
  ?label:string prop ->
  ?level:string prop ->
  ?max_bitrate:float prop ->
  ?profile:string prop ->
  ?reference_frames:float prop ->
  ?slices:float prop ->
  ?width:string prop ->
  bitrate:float prop ->
  unit ->
  output__custom_preset__codec__h265_video__layer

type output__custom_preset__codec__h265_video

val output__custom_preset__codec__h265_video :
  ?complexity:string prop ->
  ?key_frame_interval:string prop ->
  ?label:string prop ->
  ?scene_change_detection_enabled:bool prop ->
  ?stretch_mode:string prop ->
  ?sync_mode:string prop ->
  layer:output__custom_preset__codec__h265_video__layer list ->
  unit ->
  output__custom_preset__codec__h265_video

type output__custom_preset__codec__jpg_image__layer

val output__custom_preset__codec__jpg_image__layer :
  ?height:string prop ->
  ?label:string prop ->
  ?quality:float prop ->
  ?width:string prop ->
  unit ->
  output__custom_preset__codec__jpg_image__layer

type output__custom_preset__codec__jpg_image

val output__custom_preset__codec__jpg_image :
  ?key_frame_interval:string prop ->
  ?label:string prop ->
  ?range:string prop ->
  ?sprite_column:float prop ->
  ?step:string prop ->
  ?stretch_mode:string prop ->
  ?sync_mode:string prop ->
  start:string prop ->
  layer:output__custom_preset__codec__jpg_image__layer list ->
  unit ->
  output__custom_preset__codec__jpg_image

type output__custom_preset__codec__png_image__layer

val output__custom_preset__codec__png_image__layer :
  ?height:string prop ->
  ?label:string prop ->
  ?width:string prop ->
  unit ->
  output__custom_preset__codec__png_image__layer

type output__custom_preset__codec__png_image

val output__custom_preset__codec__png_image :
  ?key_frame_interval:string prop ->
  ?label:string prop ->
  ?range:string prop ->
  ?step:string prop ->
  ?stretch_mode:string prop ->
  ?sync_mode:string prop ->
  start:string prop ->
  layer:output__custom_preset__codec__png_image__layer list ->
  unit ->
  output__custom_preset__codec__png_image

type output__custom_preset__codec

val output__custom_preset__codec :
  aac_audio:output__custom_preset__codec__aac_audio list ->
  copy_audio:output__custom_preset__codec__copy_audio list ->
  copy_video:output__custom_preset__codec__copy_video list ->
  dd_audio:output__custom_preset__codec__dd_audio list ->
  h264_video:output__custom_preset__codec__h264_video list ->
  h265_video:output__custom_preset__codec__h265_video list ->
  jpg_image:output__custom_preset__codec__jpg_image list ->
  png_image:output__custom_preset__codec__png_image list ->
  unit ->
  output__custom_preset__codec

type output__custom_preset__filter__crop_rectangle

val output__custom_preset__filter__crop_rectangle :
  ?height:string prop ->
  ?left:string prop ->
  ?top:string prop ->
  ?width:string prop ->
  unit ->
  output__custom_preset__filter__crop_rectangle

type output__custom_preset__filter__deinterlace

val output__custom_preset__filter__deinterlace :
  ?mode:string prop ->
  ?parity:string prop ->
  unit ->
  output__custom_preset__filter__deinterlace

type output__custom_preset__filter__fade_in

val output__custom_preset__filter__fade_in :
  ?start:string prop ->
  duration:string prop ->
  fade_color:string prop ->
  unit ->
  output__custom_preset__filter__fade_in

type output__custom_preset__filter__fade_out

val output__custom_preset__filter__fade_out :
  ?start:string prop ->
  duration:string prop ->
  fade_color:string prop ->
  unit ->
  output__custom_preset__filter__fade_out

type output__custom_preset__filter__overlay__audio

val output__custom_preset__filter__overlay__audio :
  ?audio_gain_level:float prop ->
  ?end_:string prop ->
  ?fade_in_duration:string prop ->
  ?fade_out_duration:string prop ->
  ?start:string prop ->
  input_label:string prop ->
  unit ->
  output__custom_preset__filter__overlay__audio

type output__custom_preset__filter__overlay__video__crop_rectangle

val output__custom_preset__filter__overlay__video__crop_rectangle :
  ?height:string prop ->
  ?left:string prop ->
  ?top:string prop ->
  ?width:string prop ->
  unit ->
  output__custom_preset__filter__overlay__video__crop_rectangle

type output__custom_preset__filter__overlay__video__position

val output__custom_preset__filter__overlay__video__position :
  ?height:string prop ->
  ?left:string prop ->
  ?top:string prop ->
  ?width:string prop ->
  unit ->
  output__custom_preset__filter__overlay__video__position

type output__custom_preset__filter__overlay__video

val output__custom_preset__filter__overlay__video :
  ?audio_gain_level:float prop ->
  ?end_:string prop ->
  ?fade_in_duration:string prop ->
  ?fade_out_duration:string prop ->
  ?opacity:float prop ->
  ?start:string prop ->
  input_label:string prop ->
  crop_rectangle:
    output__custom_preset__filter__overlay__video__crop_rectangle
    list ->
  position:
    output__custom_preset__filter__overlay__video__position list ->
  unit ->
  output__custom_preset__filter__overlay__video

type output__custom_preset__filter__overlay

val output__custom_preset__filter__overlay :
  audio:output__custom_preset__filter__overlay__audio list ->
  video:output__custom_preset__filter__overlay__video list ->
  unit ->
  output__custom_preset__filter__overlay

type output__custom_preset__filter

val output__custom_preset__filter :
  ?rotation:string prop ->
  crop_rectangle:output__custom_preset__filter__crop_rectangle list ->
  deinterlace:output__custom_preset__filter__deinterlace list ->
  fade_in:output__custom_preset__filter__fade_in list ->
  fade_out:output__custom_preset__filter__fade_out list ->
  overlay:output__custom_preset__filter__overlay list ->
  unit ->
  output__custom_preset__filter

type output__custom_preset__format__jpg

val output__custom_preset__format__jpg :
  filename_pattern:string prop ->
  unit ->
  output__custom_preset__format__jpg

type output__custom_preset__format__mp4__output_file

val output__custom_preset__format__mp4__output_file :
  labels:string prop list ->
  unit ->
  output__custom_preset__format__mp4__output_file

type output__custom_preset__format__mp4

val output__custom_preset__format__mp4 :
  filename_pattern:string prop ->
  output_file:output__custom_preset__format__mp4__output_file list ->
  unit ->
  output__custom_preset__format__mp4

type output__custom_preset__format__png

val output__custom_preset__format__png :
  filename_pattern:string prop ->
  unit ->
  output__custom_preset__format__png

type output__custom_preset__format__transport_stream__output_file

val output__custom_preset__format__transport_stream__output_file :
  labels:string prop list ->
  unit ->
  output__custom_preset__format__transport_stream__output_file

type output__custom_preset__format__transport_stream

val output__custom_preset__format__transport_stream :
  filename_pattern:string prop ->
  output_file:
    output__custom_preset__format__transport_stream__output_file list ->
  unit ->
  output__custom_preset__format__transport_stream

type output__custom_preset__format

val output__custom_preset__format :
  jpg:output__custom_preset__format__jpg list ->
  mp4:output__custom_preset__format__mp4 list ->
  png:output__custom_preset__format__png list ->
  transport_stream:
    output__custom_preset__format__transport_stream list ->
  unit ->
  output__custom_preset__format

type output__custom_preset

val output__custom_preset :
  ?experimental_options:(string * string prop) list ->
  codec:output__custom_preset__codec list ->
  filter:output__custom_preset__filter list ->
  format:output__custom_preset__format list ->
  unit ->
  output__custom_preset

type output__face_detector_preset

val output__face_detector_preset :
  ?analysis_resolution:string prop ->
  ?blur_type:string prop ->
  ?experimental_options:(string * string prop) list ->
  ?face_redactor_mode:string prop ->
  unit ->
  output__face_detector_preset

type output__video_analyzer_preset

val output__video_analyzer_preset :
  ?audio_analysis_mode:string prop ->
  ?audio_language:string prop ->
  ?experimental_options:(string * string prop) list ->
  ?insights_type:string prop ->
  unit ->
  output__video_analyzer_preset

type output

val output :
  ?on_error_action:string prop ->
  ?relative_priority:string prop ->
  audio_analyzer_preset:output__audio_analyzer_preset list ->
  builtin_preset:output__builtin_preset list ->
  custom_preset:output__custom_preset list ->
  face_detector_preset:output__face_detector_preset list ->
  video_analyzer_preset:output__video_analyzer_preset list ->
  unit ->
  output

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_media_transform

val azurerm_media_transform :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  media_services_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  output:output list ->
  unit ->
  azurerm_media_transform

val yojson_of_azurerm_media_transform :
  azurerm_media_transform -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  id : string prop;
  media_services_account_name : string prop;
  name : string prop;
  resource_group_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  media_services_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  output:output list ->
  string ->
  t
