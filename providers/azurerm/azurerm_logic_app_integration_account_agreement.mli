(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type guest_identity

val guest_identity :
  qualifier:string prop ->
  value:string prop ->
  unit ->
  guest_identity

type host_identity

val host_identity :
  qualifier:string prop -> value:string prop -> unit -> host_identity

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_logic_app_integration_account_agreement

val azurerm_logic_app_integration_account_agreement :
  ?id:string prop ->
  ?metadata:(string * string prop) list ->
  ?timeouts:timeouts ->
  agreement_type:string prop ->
  content:string prop ->
  guest_partner_name:string prop ->
  host_partner_name:string prop ->
  integration_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  guest_identity:guest_identity list ->
  host_identity:host_identity list ->
  unit ->
  azurerm_logic_app_integration_account_agreement

val yojson_of_azurerm_logic_app_integration_account_agreement :
  azurerm_logic_app_integration_account_agreement -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  agreement_type : string prop;
  content : string prop;
  guest_partner_name : string prop;
  host_partner_name : string prop;
  id : string prop;
  integration_account_name : string prop;
  metadata : (string * string) list prop;
  name : string prop;
  resource_group_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?metadata:(string * string prop) list ->
  ?timeouts:timeouts ->
  agreement_type:string prop ->
  content:string prop ->
  guest_partner_name:string prop ->
  host_partner_name:string prop ->
  integration_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  guest_identity:guest_identity list ->
  host_identity:host_identity list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?metadata:(string * string prop) list ->
  ?timeouts:timeouts ->
  agreement_type:string prop ->
  content:string prop ->
  guest_partner_name:string prop ->
  host_partner_name:string prop ->
  integration_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  guest_identity:guest_identity list ->
  host_identity:host_identity list ->
  string ->
  t Tf_core.resource
