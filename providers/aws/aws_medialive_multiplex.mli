(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type multiplex_settings

val multiplex_settings :
  ?maximum_video_buffer_delay_milliseconds:float prop ->
  ?transport_stream_reserved_bitrate:float prop ->
  transport_stream_bitrate:float prop ->
  transport_stream_id:float prop ->
  unit ->
  multiplex_settings

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_medialive_multiplex

val aws_medialive_multiplex :
  ?id:string prop ->
  ?start_multiplex:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  availability_zones:string prop list ->
  name:string prop ->
  multiplex_settings:multiplex_settings list ->
  unit ->
  aws_medialive_multiplex

val yojson_of_aws_medialive_multiplex :
  aws_medialive_multiplex -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  availability_zones : string list prop;
  id : string prop;
  name : string prop;
  start_multiplex : bool prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?start_multiplex:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  availability_zones:string prop list ->
  name:string prop ->
  multiplex_settings:multiplex_settings list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?start_multiplex:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  availability_zones:string prop list ->
  name:string prop ->
  multiplex_settings:multiplex_settings list ->
  string ->
  t Tf_core.resource
