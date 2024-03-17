(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_palo_alto_local_rulestack_fqdn_list__timeouts
type azurerm_palo_alto_local_rulestack_fqdn_list

val azurerm_palo_alto_local_rulestack_fqdn_list :
  ?audit_comment:string ->
  ?description:string ->
  ?id:string ->
  ?timeouts:azurerm_palo_alto_local_rulestack_fqdn_list__timeouts ->
  fully_qualified_domain_names:string list ->
  name:string ->
  rulestack_id:string ->
  string ->
  unit
