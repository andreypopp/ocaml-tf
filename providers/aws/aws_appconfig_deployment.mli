(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_appconfig_deployment

val aws_appconfig_deployment :
  ?description:string prop ->
  ?id:string prop ->
  ?kms_key_identifier:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  application_id:string prop ->
  configuration_profile_id:string prop ->
  configuration_version:string prop ->
  deployment_strategy_id:string prop ->
  environment_id:string prop ->
  unit ->
  aws_appconfig_deployment

val yojson_of_aws_appconfig_deployment :
  aws_appconfig_deployment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  application_id : string prop;
  arn : string prop;
  configuration_profile_id : string prop;
  configuration_version : string prop;
  deployment_number : float prop;
  deployment_strategy_id : string prop;
  description : string prop;
  environment_id : string prop;
  id : string prop;
  kms_key_arn : string prop;
  kms_key_identifier : string prop;
  state : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?kms_key_identifier:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  application_id:string prop ->
  configuration_profile_id:string prop ->
  configuration_version:string prop ->
  deployment_strategy_id:string prop ->
  environment_id:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?kms_key_identifier:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  application_id:string prop ->
  configuration_profile_id:string prop ->
  configuration_version:string prop ->
  deployment_strategy_id:string prop ->
  environment_id:string prop ->
  string ->
  t Tf_core.resource
