(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_appconfig_environments

val aws_appconfig_environments :
  ?id:string prop ->
  application_id:string prop ->
  unit ->
  aws_appconfig_environments

val yojson_of_aws_appconfig_environments :
  aws_appconfig_environments -> json

(** RESOURCE REGISTRATION *)

type t = private {
  application_id : string prop;
  environment_ids : string list prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  application_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  application_id:string prop ->
  string ->
  t Tf_core.resource
