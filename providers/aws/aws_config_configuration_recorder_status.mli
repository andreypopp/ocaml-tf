(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_config_configuration_recorder_status

val aws_config_configuration_recorder_status :
  ?id:string prop ->
  is_enabled:bool prop ->
  name:string prop ->
  unit ->
  aws_config_configuration_recorder_status

val yojson_of_aws_config_configuration_recorder_status :
  aws_config_configuration_recorder_status -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  is_enabled : bool prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  is_enabled:bool prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  is_enabled:bool prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
