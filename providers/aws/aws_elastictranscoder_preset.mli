(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type audio

val audio :
  ?audio_packing_mode:string prop ->
  ?bit_rate:string prop ->
  ?channels:string prop ->
  ?codec:string prop ->
  ?sample_rate:string prop ->
  unit ->
  audio

type audio_codec_options

val audio_codec_options :
  ?bit_depth:string prop ->
  ?bit_order:string prop ->
  ?profile:string prop ->
  ?signed:string prop ->
  unit ->
  audio_codec_options

type thumbnails

val thumbnails :
  ?aspect_ratio:string prop ->
  ?format:string prop ->
  ?interval:string prop ->
  ?max_height:string prop ->
  ?max_width:string prop ->
  ?padding_policy:string prop ->
  ?resolution:string prop ->
  ?sizing_policy:string prop ->
  unit ->
  thumbnails

type video

val video :
  ?aspect_ratio:string prop ->
  ?bit_rate:string prop ->
  ?codec:string prop ->
  ?display_aspect_ratio:string prop ->
  ?fixed_gop:string prop ->
  ?frame_rate:string prop ->
  ?keyframes_max_dist:string prop ->
  ?max_frame_rate:string prop ->
  ?max_height:string prop ->
  ?max_width:string prop ->
  ?padding_policy:string prop ->
  ?resolution:string prop ->
  ?sizing_policy:string prop ->
  unit ->
  video

type video_watermarks

val video_watermarks :
  ?horizontal_align:string prop ->
  ?horizontal_offset:string prop ->
  ?id:string prop ->
  ?max_height:string prop ->
  ?max_width:string prop ->
  ?opacity:string prop ->
  ?sizing_policy:string prop ->
  ?target:string prop ->
  ?vertical_align:string prop ->
  ?vertical_offset:string prop ->
  unit ->
  video_watermarks

type aws_elastictranscoder_preset

val aws_elastictranscoder_preset :
  ?description:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?type_:string prop ->
  ?video_codec_options:(string * string prop) list ->
  container:string prop ->
  audio:audio list ->
  audio_codec_options:audio_codec_options list ->
  thumbnails:thumbnails list ->
  video:video list ->
  video_watermarks:video_watermarks list ->
  unit ->
  aws_elastictranscoder_preset

val yojson_of_aws_elastictranscoder_preset :
  aws_elastictranscoder_preset -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  container : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  type_ : string prop;
  video_codec_options : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?type_:string prop ->
  ?video_codec_options:(string * string prop) list ->
  container:string prop ->
  audio:audio list ->
  audio_codec_options:audio_codec_options list ->
  thumbnails:thumbnails list ->
  video:video list ->
  video_watermarks:video_watermarks list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?type_:string prop ->
  ?video_codec_options:(string * string prop) list ->
  container:string prop ->
  audio:audio list ->
  audio_codec_options:audio_codec_options list ->
  thumbnails:thumbnails list ->
  video:video list ->
  video_watermarks:video_watermarks list ->
  string ->
  t Tf_core.resource
