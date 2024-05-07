(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type identity = {
  identity_ids : string prop list;  (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}

type network_interface__ip_configuration__public_ip_address__ip_tag = {
  tag : string prop;  (** tag *)
  type_ : string prop; [@key "type"]  (** type *)
}

type network_interface__ip_configuration__public_ip_address = {
  domain_name_label : string prop;  (** domain_name_label *)
  idle_timeout_in_minutes : float prop;
      (** idle_timeout_in_minutes *)
  ip_tag :
    network_interface__ip_configuration__public_ip_address__ip_tag
    list;
      (** ip_tag *)
  name : string prop;  (** name *)
  public_ip_prefix_id : string prop;  (** public_ip_prefix_id *)
  version : string prop;  (** version *)
}

type network_interface__ip_configuration = {
  application_gateway_backend_address_pool_ids : string prop list;
      (** application_gateway_backend_address_pool_ids *)
  application_security_group_ids : string prop list;
      (** application_security_group_ids *)
  load_balancer_backend_address_pool_ids : string prop list;
      (** load_balancer_backend_address_pool_ids *)
  load_balancer_inbound_nat_rules_ids : string prop list;
      (** load_balancer_inbound_nat_rules_ids *)
  name : string prop;  (** name *)
  primary : bool prop;  (** primary *)
  public_ip_address :
    network_interface__ip_configuration__public_ip_address list;
      (** public_ip_address *)
  subnet_id : string prop;  (** subnet_id *)
  version : string prop;  (** version *)
}

type network_interface = {
  accelerated_networking_enabled : bool prop;
      (** accelerated_networking_enabled *)
  dns_servers : string prop list;  (** dns_servers *)
  ip_configuration : network_interface__ip_configuration list;
      (** ip_configuration *)
  ip_forwarding_enabled : bool prop;  (** ip_forwarding_enabled *)
  name : string prop;  (** name *)
  network_security_group_id : string prop;
      (** network_security_group_id *)
  primary : bool prop;  (** primary *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_orchestrated_virtual_machine_scale_set

val azurerm_orchestrated_virtual_machine_scale_set :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_orchestrated_virtual_machine_scale_set

val yojson_of_azurerm_orchestrated_virtual_machine_scale_set :
  azurerm_orchestrated_virtual_machine_scale_set -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  identity : identity list prop;
  location : string prop;
  name : string prop;
  network_interface : network_interface list prop;
  resource_group_name : string prop;
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
