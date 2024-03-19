(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_oam_sink_policy

val aws_oam_sink_policy :
  ?id:string prop ->
  ?timeouts:timeouts ->
  policy:string prop ->
  sink_identifier:string prop ->
  unit ->
  aws_oam_sink_policy

val yojson_of_aws_oam_sink_policy : aws_oam_sink_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  id : string prop;
  policy : string prop;
  sink_id : string prop;
  sink_identifier : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  policy:string prop ->
  sink_identifier:string prop ->
  string ->
  t
