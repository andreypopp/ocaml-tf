(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_palo_alto_local_rulestack_prefix_list__timeouts
type azurerm_palo_alto_local_rulestack_prefix_list

val azurerm_palo_alto_local_rulestack_prefix_list :
  ?audit_comment:string ->
  ?description:string ->
  ?id:string ->
  ?timeouts:azurerm_palo_alto_local_rulestack_prefix_list__timeouts ->
  name:string ->
  prefix_list:string list ->
  rulestack_id:string ->
  string ->
  unit
