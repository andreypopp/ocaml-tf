(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_public_ip__timeouts
type azurerm_public_ip

val azurerm_public_ip :
  ?ddos_protection_mode:string prop ->
  ?ddos_protection_plan_id:string prop ->
  ?domain_name_label:string prop ->
  ?edge_zone:string prop ->
  ?id:string prop ->
  ?idle_timeout_in_minutes:float prop ->
  ?ip_tags:(string * string prop) list ->
  ?ip_version:string prop ->
  ?public_ip_prefix_id:string prop ->
  ?reverse_fqdn:string prop ->
  ?sku:string prop ->
  ?sku_tier:string prop ->
  ?tags:(string * string prop) list ->
  ?zones:string prop list ->
  ?timeouts:azurerm_public_ip__timeouts ->
  allocation_method:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
