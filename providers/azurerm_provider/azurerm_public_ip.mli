(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_public_ip__timeouts
type azurerm_public_ip

val azurerm_public_ip :
  ?ddos_protection_mode:string ->
  ?ddos_protection_plan_id:string ->
  ?domain_name_label:string ->
  ?edge_zone:string ->
  ?id:string ->
  ?idle_timeout_in_minutes:float ->
  ?ip_tags:(string * string) list ->
  ?ip_version:string ->
  ?public_ip_prefix_id:string ->
  ?reverse_fqdn:string ->
  ?sku:string ->
  ?sku_tier:string ->
  ?tags:(string * string) list ->
  ?zones:string list ->
  ?timeouts:azurerm_public_ip__timeouts ->
  allocation_method:string ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
