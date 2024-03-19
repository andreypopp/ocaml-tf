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
  ?timeouts:timeouts ->
  allocation_method:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_public_ip

val yojson_of_azurerm_public_ip : azurerm_public_ip -> json

(** RESOURCE REGISTRATION *)

type t = private {
  allocation_method : string prop;
  ddos_protection_mode : string prop;
  ddos_protection_plan_id : string prop;
  domain_name_label : string prop;
  edge_zone : string prop;
  fqdn : string prop;
  id : string prop;
  idle_timeout_in_minutes : float prop;
  ip_address : string prop;
  ip_tags : (string * string) list prop;
  ip_version : string prop;
  location : string prop;
  name : string prop;
  public_ip_prefix_id : string prop;
  resource_group_name : string prop;
  reverse_fqdn : string prop;
  sku : string prop;
  sku_tier : string prop;
  tags : (string * string) list prop;
  zones : string list prop;
}

val register :
  ?tf_module:tf_module ->
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
  ?timeouts:timeouts ->
  allocation_method:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
