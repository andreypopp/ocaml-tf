(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_palo_alto_local_rulestack

val azurerm_palo_alto_local_rulestack :
  ?anti_spyware_profile:string prop ->
  ?anti_virus_profile:string prop ->
  ?description:string prop ->
  ?dns_subscription:string prop ->
  ?file_blocking_profile:string prop ->
  ?id:string prop ->
  ?url_filtering_profile:string prop ->
  ?vulnerability_profile:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_palo_alto_local_rulestack

val yojson_of_azurerm_palo_alto_local_rulestack :
  azurerm_palo_alto_local_rulestack -> json

(** RESOURCE REGISTRATION *)

type t = private {
  anti_spyware_profile : string prop;
  anti_virus_profile : string prop;
  description : string prop;
  dns_subscription : string prop;
  file_blocking_profile : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  url_filtering_profile : string prop;
  vulnerability_profile : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?anti_spyware_profile:string prop ->
  ?anti_virus_profile:string prop ->
  ?description:string prop ->
  ?dns_subscription:string prop ->
  ?file_blocking_profile:string prop ->
  ?id:string prop ->
  ?url_filtering_profile:string prop ->
  ?vulnerability_profile:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
