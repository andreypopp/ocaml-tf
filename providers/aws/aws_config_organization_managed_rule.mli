(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_config_organization_managed_rule

val aws_config_organization_managed_rule :
  ?description:string prop ->
  ?excluded_accounts:string prop list ->
  ?id:string prop ->
  ?input_parameters:string prop ->
  ?maximum_execution_frequency:string prop ->
  ?resource_id_scope:string prop ->
  ?resource_types_scope:string prop list ->
  ?tag_key_scope:string prop ->
  ?tag_value_scope:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  rule_identifier:string prop ->
  unit ->
  aws_config_organization_managed_rule

val yojson_of_aws_config_organization_managed_rule :
  aws_config_organization_managed_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  description : string prop;
  excluded_accounts : string list prop;
  id : string prop;
  input_parameters : string prop;
  maximum_execution_frequency : string prop;
  name : string prop;
  resource_id_scope : string prop;
  resource_types_scope : string list prop;
  rule_identifier : string prop;
  tag_key_scope : string prop;
  tag_value_scope : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?excluded_accounts:string prop list ->
  ?id:string prop ->
  ?input_parameters:string prop ->
  ?maximum_execution_frequency:string prop ->
  ?resource_id_scope:string prop ->
  ?resource_types_scope:string prop list ->
  ?tag_key_scope:string prop ->
  ?tag_value_scope:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  rule_identifier:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?excluded_accounts:string prop list ->
  ?id:string prop ->
  ?input_parameters:string prop ->
  ?maximum_execution_frequency:string prop ->
  ?resource_id_scope:string prop ->
  ?resource_types_scope:string prop list ->
  ?tag_key_scope:string prop ->
  ?tag_value_scope:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  rule_identifier:string prop ->
  string ->
  t Tf_core.resource
