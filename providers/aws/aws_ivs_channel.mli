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

type aws_ivs_channel

val aws_ivs_channel :
  ?authorized:bool prop ->
  ?id:string prop ->
  ?latency_mode:string prop ->
  ?name:string prop ->
  ?recording_configuration_arn:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?type_:string prop ->
  ?timeouts:timeouts ->
  unit ->
  aws_ivs_channel

val yojson_of_aws_ivs_channel : aws_ivs_channel -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  authorized : bool prop;
  id : string prop;
  ingest_endpoint : string prop;
  latency_mode : string prop;
  name : string prop;
  playback_url : string prop;
  recording_configuration_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?authorized:bool prop ->
  ?id:string prop ->
  ?latency_mode:string prop ->
  ?name:string prop ->
  ?recording_configuration_arn:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?type_:string prop ->
  ?timeouts:timeouts ->
  string ->
  t
