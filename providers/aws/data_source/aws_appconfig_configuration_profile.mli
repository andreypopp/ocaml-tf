(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type validator = {
  content : string prop;  (** content *)
  type_ : string prop; [@key "type"]  (** type *)
}

type aws_appconfig_configuration_profile

val aws_appconfig_configuration_profile :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  application_id:string prop ->
  configuration_profile_id:string prop ->
  unit ->
  aws_appconfig_configuration_profile

val yojson_of_aws_appconfig_configuration_profile :
  aws_appconfig_configuration_profile -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  application_id : string prop;
  arn : string prop;
  configuration_profile_id : string prop;
  description : string prop;
  id : string prop;
  kms_key_identifier : string prop;
  location_uri : string prop;
  name : string prop;
  retrieval_role_arn : string prop;
  tags : (string * string) list prop;
  type_ : string prop;
  validator : validator list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  application_id:string prop ->
  configuration_profile_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  application_id:string prop ->
  configuration_profile_id:string prop ->
  string ->
  t Tf_core.resource
