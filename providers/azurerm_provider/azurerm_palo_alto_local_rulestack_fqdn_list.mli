(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_palo_alto_local_rulestack_fqdn_list__timeouts
type azurerm_palo_alto_local_rulestack_fqdn_list

val azurerm_palo_alto_local_rulestack_fqdn_list :
  ?audit_comment:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:azurerm_palo_alto_local_rulestack_fqdn_list__timeouts ->
  fully_qualified_domain_names:string prop list ->
  name:string prop ->
  rulestack_id:string prop ->
  string ->
  unit
