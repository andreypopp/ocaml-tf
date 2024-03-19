(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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
