(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_palo_alto_local_rulestack_prefix_list__timeouts
type azurerm_palo_alto_local_rulestack_prefix_list

val azurerm_palo_alto_local_rulestack_prefix_list :
  ?audit_comment:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:azurerm_palo_alto_local_rulestack_prefix_list__timeouts ->
  name:string prop ->
  prefix_list:string prop list ->
  rulestack_id:string prop ->
  string ->
  unit
