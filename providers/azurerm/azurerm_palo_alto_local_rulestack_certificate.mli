(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_palo_alto_local_rulestack_certificate

val azurerm_palo_alto_local_rulestack_certificate :
  ?audit_comment:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?key_vault_certificate_id:string prop ->
  ?self_signed:bool prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  rulestack_id:string prop ->
  unit ->
  azurerm_palo_alto_local_rulestack_certificate

val yojson_of_azurerm_palo_alto_local_rulestack_certificate :
  azurerm_palo_alto_local_rulestack_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  audit_comment : string prop;
  description : string prop;
  id : string prop;
  key_vault_certificate_id : string prop;
  name : string prop;
  rulestack_id : string prop;
  self_signed : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?audit_comment:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?key_vault_certificate_id:string prop ->
  ?self_signed:bool prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  rulestack_id:string prop ->
  string ->
  t

val make :
  ?audit_comment:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?key_vault_certificate_id:string prop ->
  ?self_signed:bool prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  rulestack_id:string prop ->
  string ->
  t Tf_core.resource
