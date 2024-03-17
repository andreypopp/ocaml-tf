(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_palo_alto_local_rulestack_certificate__timeouts
type azurerm_palo_alto_local_rulestack_certificate

val azurerm_palo_alto_local_rulestack_certificate :
  ?audit_comment:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?key_vault_certificate_id:string prop ->
  ?self_signed:bool prop ->
  ?timeouts:azurerm_palo_alto_local_rulestack_certificate__timeouts ->
  name:string prop ->
  rulestack_id:string prop ->
  string ->
  unit
