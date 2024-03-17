(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_palo_alto_local_rulestack__timeouts
type azurerm_palo_alto_local_rulestack

val azurerm_palo_alto_local_rulestack :
  ?anti_spyware_profile:string ->
  ?anti_virus_profile:string ->
  ?description:string ->
  ?dns_subscription:string ->
  ?file_blocking_profile:string ->
  ?url_filtering_profile:string ->
  ?vulnerability_profile:string ->
  ?timeouts:azurerm_palo_alto_local_rulestack__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
