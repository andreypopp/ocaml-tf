(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type connector

val connector :
  priority:float prop ->
  voice_connector_id:string prop ->
  unit ->
  connector

type aws_chime_voice_connector_group

val aws_chime_voice_connector_group :
  ?id:string prop ->
  name:string prop ->
  connector:connector list ->
  unit ->
  aws_chime_voice_connector_group

val yojson_of_aws_chime_voice_connector_group :
  aws_chime_voice_connector_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  name:string prop ->
  connector:connector list ->
  string ->
  t

val make :
  ?id:string prop ->
  name:string prop ->
  connector:connector list ->
  string ->
  t Tf_core.resource
