(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_datazone_environment_blueprint_configuration

val aws_datazone_environment_blueprint_configuration :
  ?manage_access_role_arn:string prop ->
  ?provisioning_role_arn:string prop ->
  ?regional_parameters:(string * (string * string prop) list) list ->
  domain_id:string prop ->
  enabled_regions:string prop list ->
  environment_blueprint_id:string prop ->
  unit ->
  aws_datazone_environment_blueprint_configuration

val yojson_of_aws_datazone_environment_blueprint_configuration :
  aws_datazone_environment_blueprint_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  domain_id : string prop;
  enabled_regions : string list prop;
  environment_blueprint_id : string prop;
  manage_access_role_arn : string prop;
  provisioning_role_arn : string prop;
  regional_parameters : (string * (string * string) list) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?manage_access_role_arn:string prop ->
  ?provisioning_role_arn:string prop ->
  ?regional_parameters:(string * (string * string prop) list) list ->
  domain_id:string prop ->
  enabled_regions:string prop list ->
  environment_blueprint_id:string prop ->
  string ->
  t

val make :
  ?manage_access_role_arn:string prop ->
  ?provisioning_role_arn:string prop ->
  ?regional_parameters:(string * (string * string prop) list) list ->
  domain_id:string prop ->
  enabled_regions:string prop list ->
  environment_blueprint_id:string prop ->
  string ->
  t Tf_core.resource
