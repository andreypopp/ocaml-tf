(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type ip_configuration = {
  name : string prop;  (** name *)
  private_ip_address : string prop;  (** private_ip_address *)
  public_ip_address_id : string prop;  (** public_ip_address_id *)
  subnet_id : string prop;  (** subnet_id *)
}

type management_ip_configuration = {
  name : string prop;  (** name *)
  private_ip_address : string prop;  (** private_ip_address *)
  public_ip_address_id : string prop;  (** public_ip_address_id *)
  subnet_id : string prop;  (** subnet_id *)
}

type virtual_hub = {
  private_ip_address : string prop;  (** private_ip_address *)
  public_ip_addresses : string prop list;  (** public_ip_addresses *)
  public_ip_count : float prop;  (** public_ip_count *)
  virtual_hub_id : string prop;  (** virtual_hub_id *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_firewall

val azurerm_firewall :
  ?dns_proxy_enabled:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_firewall

val yojson_of_azurerm_firewall : azurerm_firewall -> json

(** RESOURCE REGISTRATION *)

type t = private {
  dns_proxy_enabled : bool prop;
  dns_servers : string list prop;
  firewall_policy_id : string prop;
  id : string prop;
  ip_configuration : ip_configuration list prop;
  location : string prop;
  management_ip_configuration :
    management_ip_configuration list prop;
  name : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  sku_tier : string prop;
  tags : (string * string) list prop;
  threat_intel_mode : string prop;
  virtual_hub : virtual_hub list prop;
  zones : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?dns_proxy_enabled:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?dns_proxy_enabled:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
