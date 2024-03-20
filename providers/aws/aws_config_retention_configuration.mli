(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_config_retention_configuration

val aws_config_retention_configuration :
  retention_period_in_days:float prop ->
  unit ->
  aws_config_retention_configuration

val yojson_of_aws_config_retention_configuration :
  aws_config_retention_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  name : string prop;
  retention_period_in_days : float prop;
}

val register :
  ?tf_module:tf_module ->
  retention_period_in_days:float prop ->
  string ->
  t

val make :
  retention_period_in_days:float prop -> string -> t Tf_core.resource
