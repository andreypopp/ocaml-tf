(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_palo_alto_local_rulestack_certificate__timeouts
type azurerm_palo_alto_local_rulestack_certificate

val azurerm_palo_alto_local_rulestack_certificate :
  ?audit_comment:string ->
  ?description:string ->
  ?id:string ->
  ?key_vault_certificate_id:string ->
  ?self_signed:bool ->
  ?timeouts:azurerm_palo_alto_local_rulestack_certificate__timeouts ->
  name:string ->
  rulestack_id:string ->
  string ->
  unit
