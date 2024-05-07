(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_palo_alto_local_rulestack

val azurerm_palo_alto_local_rulestack :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_palo_alto_local_rulestack

val yojson_of_azurerm_palo_alto_local_rulestack :
  azurerm_palo_alto_local_rulestack -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  anti_spyware_profile : string prop;
  anti_virus_profile : string prop;
  description : string prop;
  dns_subscription : string prop;
  file_blocking_profile : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  outbound_trust_certificate : string prop;
  outbound_untrust_certificate : string prop;
  resource_group_name : string prop;
  url_filtering_profile : string prop;
  vulnerability_profile : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
