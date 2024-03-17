(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_config_organization_managed_rule__timeouts
type aws_config_organization_managed_rule

val aws_config_organization_managed_rule :
  ?description:string ->
  ?excluded_accounts:string list ->
  ?id:string ->
  ?input_parameters:string ->
  ?maximum_execution_frequency:string ->
  ?resource_id_scope:string ->
  ?resource_types_scope:string list ->
  ?tag_key_scope:string ->
  ?tag_value_scope:string ->
  ?timeouts:aws_config_organization_managed_rule__timeouts ->
  name:string ->
  rule_identifier:string ->
  string ->
  unit
