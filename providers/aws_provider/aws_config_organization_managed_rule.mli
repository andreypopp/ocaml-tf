(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_config_organization_managed_rule__timeouts
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
  ?timeouts:aws_config_organization_managed_rule__timeouts ->
  name:string prop ->
  rule_identifier:string prop ->
  string ->
  unit
