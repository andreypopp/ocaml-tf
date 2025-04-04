(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type validator

val validator :
  ?content:string prop -> type_:string prop -> unit -> validator

type aws_appconfig_configuration_profile

val aws_appconfig_configuration_profile :
  ?description:string prop ->
  ?id:string prop ->
  ?kms_key_identifier:string prop ->
  ?retrieval_role_arn:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?type_:string prop ->
  application_id:string prop ->
  location_uri:string prop ->
  name:string prop ->
  validator:validator list ->
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
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?kms_key_identifier:string prop ->
  ?retrieval_role_arn:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?type_:string prop ->
  application_id:string prop ->
  location_uri:string prop ->
  name:string prop ->
  validator:validator list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?kms_key_identifier:string prop ->
  ?retrieval_role_arn:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?type_:string prop ->
  application_id:string prop ->
  location_uri:string prop ->
  name:string prop ->
  validator:validator list ->
  string ->
  t Tf_core.resource
