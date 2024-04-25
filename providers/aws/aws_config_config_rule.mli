(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type evaluation_mode

val evaluation_mode : ?mode:string prop -> unit -> evaluation_mode

type scope

val scope :
  ?compliance_resource_id:string prop ->
  ?compliance_resource_types:string prop list ->
  ?tag_key:string prop ->
  ?tag_value:string prop ->
  unit ->
  scope

type source__custom_policy_details

val source__custom_policy_details :
  ?enable_debug_log_delivery:bool prop ->
  policy_runtime:string prop ->
  policy_text:string prop ->
  unit ->
  source__custom_policy_details

type source__source_detail

val source__source_detail :
  ?event_source:string prop ->
  ?maximum_execution_frequency:string prop ->
  ?message_type:string prop ->
  unit ->
  source__source_detail

type source

val source :
  ?source_identifier:string prop ->
  ?custom_policy_details:source__custom_policy_details list ->
  owner:string prop ->
  source_detail:source__source_detail list ->
  unit ->
  source

type aws_config_config_rule

val aws_config_config_rule :
  ?description:string prop ->
  ?id:string prop ->
  ?input_parameters:string prop ->
  ?maximum_execution_frequency:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?scope:scope list ->
  name:string prop ->
  evaluation_mode:evaluation_mode list ->
  source:source list ->
  unit ->
  aws_config_config_rule

val yojson_of_aws_config_config_rule : aws_config_config_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  description : string prop;
  id : string prop;
  input_parameters : string prop;
  maximum_execution_frequency : string prop;
  name : string prop;
  rule_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?input_parameters:string prop ->
  ?maximum_execution_frequency:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?scope:scope list ->
  name:string prop ->
  evaluation_mode:evaluation_mode list ->
  source:source list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?input_parameters:string prop ->
  ?maximum_execution_frequency:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?scope:scope list ->
  name:string prop ->
  evaluation_mode:evaluation_mode list ->
  source:source list ->
  string ->
  t Tf_core.resource
