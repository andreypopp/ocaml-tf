(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_oam_sink

val aws_oam_sink :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  sink_identifier:string prop ->
  unit ->
  aws_oam_sink

val yojson_of_aws_oam_sink : aws_oam_sink -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  id : string prop;
  name : string prop;
  sink_id : string prop;
  sink_identifier : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  sink_identifier:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  sink_identifier:string prop ->
  string ->
  t Tf_core.resource
