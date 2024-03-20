(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type route

val route :
  ?port:float prop ->
  host:string prop ->
  priority:float prop ->
  protocol:string prop ->
  weight:float prop ->
  unit ->
  route

type aws_chime_voice_connector_origination

val aws_chime_voice_connector_origination :
  ?disabled:bool prop ->
  ?id:string prop ->
  voice_connector_id:string prop ->
  route:route list ->
  unit ->
  aws_chime_voice_connector_origination

val yojson_of_aws_chime_voice_connector_origination :
  aws_chime_voice_connector_origination -> json

(** RESOURCE REGISTRATION *)

type t = private {
  disabled : bool prop;
  id : string prop;
  voice_connector_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?disabled:bool prop ->
  ?id:string prop ->
  voice_connector_id:string prop ->
  route:route list ->
  string ->
  t

val make :
  ?disabled:bool prop ->
  ?id:string prop ->
  voice_connector_id:string prop ->
  route:route list ->
  string ->
  t Tf_core.resource
