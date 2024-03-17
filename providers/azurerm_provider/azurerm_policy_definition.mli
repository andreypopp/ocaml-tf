(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_policy_definition__timeouts
type azurerm_policy_definition

val azurerm_policy_definition :
  ?description:string ->
  ?id:string ->
  ?management_group_id:string ->
  ?metadata:string ->
  ?parameters:string ->
  ?policy_rule:string ->
  ?timeouts:azurerm_policy_definition__timeouts ->
  display_name:string ->
  mode:string ->
  name:string ->
  policy_type:string ->
  string ->
  unit
