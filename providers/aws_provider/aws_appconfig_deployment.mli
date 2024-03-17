(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appconfig_deployment

val aws_appconfig_deployment :
  ?description:string ->
  ?id:string ->
  ?kms_key_identifier:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  application_id:string ->
  configuration_profile_id:string ->
  configuration_version:string ->
  deployment_strategy_id:string ->
  environment_id:string ->
  string ->
  unit
