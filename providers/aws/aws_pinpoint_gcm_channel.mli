(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_pinpoint_gcm_channel

val aws_pinpoint_gcm_channel :
  ?enabled:bool prop ->
  ?id:string prop ->
  api_key:string prop ->
  application_id:string prop ->
  unit ->
  aws_pinpoint_gcm_channel

val yojson_of_aws_pinpoint_gcm_channel :
  aws_pinpoint_gcm_channel -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  api_key : string prop;
  application_id : string prop;
  enabled : bool prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?enabled:bool prop ->
  ?id:string prop ->
  api_key:string prop ->
  application_id:string prop ->
  string ->
  t

val make :
  ?enabled:bool prop ->
  ?id:string prop ->
  api_key:string prop ->
  application_id:string prop ->
  string ->
  t Tf_core.resource
