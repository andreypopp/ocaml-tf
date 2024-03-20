(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_appconfig_hosted_configuration_version

val aws_appconfig_hosted_configuration_version :
  ?description:string prop ->
  ?id:string prop ->
  application_id:string prop ->
  configuration_profile_id:string prop ->
  content:string prop ->
  content_type:string prop ->
  unit ->
  aws_appconfig_hosted_configuration_version

val yojson_of_aws_appconfig_hosted_configuration_version :
  aws_appconfig_hosted_configuration_version -> json

(** RESOURCE REGISTRATION *)

type t = private {
  application_id : string prop;
  arn : string prop;
  configuration_profile_id : string prop;
  content : string prop;
  content_type : string prop;
  description : string prop;
  id : string prop;
  version_number : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  application_id:string prop ->
  configuration_profile_id:string prop ->
  content:string prop ->
  content_type:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  application_id:string prop ->
  configuration_profile_id:string prop ->
  content:string prop ->
  content_type:string prop ->
  string ->
  t Tf_core.resource
