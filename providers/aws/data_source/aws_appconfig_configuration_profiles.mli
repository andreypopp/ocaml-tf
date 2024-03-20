(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_appconfig_configuration_profiles

val aws_appconfig_configuration_profiles :
  ?id:string prop ->
  application_id:string prop ->
  unit ->
  aws_appconfig_configuration_profiles

val yojson_of_aws_appconfig_configuration_profiles :
  aws_appconfig_configuration_profiles -> json

(** RESOURCE REGISTRATION *)

type t = private {
  application_id : string prop;
  configuration_profile_ids : string list prop;
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
