(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_palo_alto_local_rulestack__timeouts
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
  ?timeouts:azurerm_palo_alto_local_rulestack__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
