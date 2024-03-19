(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_pinpoint_adm_channel

val aws_pinpoint_adm_channel :
  ?enabled:bool prop ->
  ?id:string prop ->
  application_id:string prop ->
  client_id:string prop ->
  client_secret:string prop ->
  unit ->
  aws_pinpoint_adm_channel

val yojson_of_aws_pinpoint_adm_channel :
  aws_pinpoint_adm_channel -> json

(** RESOURCE REGISTRATION *)

type t = private {
  application_id : string prop;
  client_id : string prop;
  client_secret : string prop;
  enabled : bool prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?enabled:bool prop ->
  ?id:string prop ->
  application_id:string prop ->
  client_id:string prop ->
  client_secret:string prop ->
  string ->
  t
