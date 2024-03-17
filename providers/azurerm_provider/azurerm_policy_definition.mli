(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_policy_definition__timeouts
type azurerm_policy_definition

val azurerm_policy_definition :
  ?description:string prop ->
  ?id:string prop ->
  ?management_group_id:string prop ->
  ?metadata:string prop ->
  ?parameters:string prop ->
  ?policy_rule:string prop ->
  ?timeouts:azurerm_policy_definition__timeouts ->
  display_name:string prop ->
  mode:string prop ->
  name:string prop ->
  policy_type:string prop ->
  string ->
  unit
