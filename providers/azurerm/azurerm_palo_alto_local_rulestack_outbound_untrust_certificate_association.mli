(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_palo_alto_local_rulestack_outbound_untrust_certificate_association

val azurerm_palo_alto_local_rulestack_outbound_untrust_certificate_association :
  ?id:string prop ->
  ?timeouts:timeouts ->
  certificate_id:string prop ->
  unit ->
  azurerm_palo_alto_local_rulestack_outbound_untrust_certificate_association

val yojson_of_azurerm_palo_alto_local_rulestack_outbound_untrust_certificate_association :
  azurerm_palo_alto_local_rulestack_outbound_untrust_certificate_association ->
  json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  certificate_id : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  certificate_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  certificate_id:string prop ->
  string ->
  t Tf_core.resource
