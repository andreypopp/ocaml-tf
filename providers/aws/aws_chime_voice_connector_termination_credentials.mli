(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type credentials

val credentials :
  password:string prop -> username:string prop -> unit -> credentials

type aws_chime_voice_connector_termination_credentials

val aws_chime_voice_connector_termination_credentials :
  ?id:string prop ->
  voice_connector_id:string prop ->
  credentials:credentials list ->
  unit ->
  aws_chime_voice_connector_termination_credentials

val yojson_of_aws_chime_voice_connector_termination_credentials :
  aws_chime_voice_connector_termination_credentials -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  voice_connector_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  voice_connector_id:string prop ->
  credentials:credentials list ->
  string ->
  t

val make :
  ?id:string prop ->
  voice_connector_id:string prop ->
  credentials:credentials list ->
  string ->
  t Tf_core.resource
