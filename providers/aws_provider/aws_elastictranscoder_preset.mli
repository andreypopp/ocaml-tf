(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_elastictranscoder_preset__audio
type aws_elastictranscoder_preset__audio_codec_options
type aws_elastictranscoder_preset__thumbnails
type aws_elastictranscoder_preset__video
type aws_elastictranscoder_preset__video_watermarks
type aws_elastictranscoder_preset

val aws_elastictranscoder_preset :
  ?description:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?type_:string prop ->
  ?video_codec_options:(string * string prop) list ->
  container:string prop ->
  audio:aws_elastictranscoder_preset__audio list ->
  audio_codec_options:
    aws_elastictranscoder_preset__audio_codec_options list ->
  thumbnails:aws_elastictranscoder_preset__thumbnails list ->
  video:aws_elastictranscoder_preset__video list ->
  video_watermarks:
    aws_elastictranscoder_preset__video_watermarks list ->
  string ->
  unit
