(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type recording_group__exclusion_by_resource_types

val recording_group__exclusion_by_resource_types :
  ?resource_types:string prop list ->
  unit ->
  recording_group__exclusion_by_resource_types

type recording_group__recording_strategy

val recording_group__recording_strategy :
  ?use_only:string prop ->
  unit ->
  recording_group__recording_strategy

type recording_group

val recording_group :
  ?all_supported:bool prop ->
  ?include_global_resource_types:bool prop ->
  ?resource_types:string prop list ->
  exclusion_by_resource_types:
    recording_group__exclusion_by_resource_types list ->
  recording_strategy:recording_group__recording_strategy list ->
  unit ->
  recording_group

type recording_mode__recording_mode_override

val recording_mode__recording_mode_override :
  ?description:string prop ->
  recording_frequency:string prop ->
  resource_types:string prop list ->
  unit ->
  recording_mode__recording_mode_override

type recording_mode

val recording_mode :
  ?recording_frequency:string prop ->
  recording_mode_override:
    recording_mode__recording_mode_override list ->
  unit ->
  recording_mode

type aws_config_configuration_recorder

val aws_config_configuration_recorder :
  ?id:string prop ->
  ?name:string prop ->
  role_arn:string prop ->
  recording_group:recording_group list ->
  recording_mode:recording_mode list ->
  unit ->
  aws_config_configuration_recorder

val yojson_of_aws_config_configuration_recorder :
  aws_config_configuration_recorder -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  name : string prop;
  role_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  role_arn:string prop ->
  recording_group:recording_group list ->
  recording_mode:recording_mode list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  role_arn:string prop ->
  recording_group:recording_group list ->
  recording_mode:recording_mode list ->
  string ->
  t Tf_core.resource
