(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appconfig_deployment

type t = private {
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
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_appconfig_deployment :
  ?description:string prop ->
  ?id:string prop ->
  ?kms_key_identifier:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  application_id:string prop ->
  configuration_profile_id:string prop ->
  configuration_version:string prop ->
  deployment_strategy_id:string prop ->
  environment_id:string prop ->
  string ->
  t
