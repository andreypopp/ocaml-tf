(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_billing_mca_account_scope

val azurerm_billing_mca_account_scope :
  ?id:string prop ->
  ?timeouts:timeouts ->
  billing_account_name:string prop ->
  billing_profile_name:string prop ->
  invoice_section_name:string prop ->
  unit ->
  azurerm_billing_mca_account_scope

val yojson_of_azurerm_billing_mca_account_scope :
  azurerm_billing_mca_account_scope -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  billing_account_name : string prop;
  billing_profile_name : string prop;
  id : string prop;
  invoice_section_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  billing_account_name:string prop ->
  billing_profile_name:string prop ->
  invoice_section_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  billing_account_name:string prop ->
  billing_profile_name:string prop ->
  invoice_section_name:string prop ->
  string ->
  t Tf_core.resource
