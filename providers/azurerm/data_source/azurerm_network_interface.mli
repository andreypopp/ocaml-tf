(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type ip_configuration = {
  application_gateway_backend_address_pools_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** application_gateway_backend_address_pools_ids *)
  application_security_group_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** application_security_group_ids *)
  gateway_load_balancer_frontend_ip_configuration_id : string prop;
      (** gateway_load_balancer_frontend_ip_configuration_id *)
  load_balancer_backend_address_pools_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** load_balancer_backend_address_pools_ids *)
  load_balancer_inbound_nat_rules_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** load_balancer_inbound_nat_rules_ids *)
  name : string prop;  (** name *)
  primary : bool prop;  (** primary *)
  private_ip_address : string prop;  (** private_ip_address *)
  private_ip_address_allocation : string prop;
      (** private_ip_address_allocation *)
  private_ip_address_version : string prop;
      (** private_ip_address_version *)
  public_ip_address_id : string prop;  (** public_ip_address_id *)
  subnet_id : string prop;  (** subnet_id *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_network_interface

val azurerm_network_interface :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_network_interface

val yojson_of_azurerm_network_interface :
  azurerm_network_interface -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  accelerated_networking_enabled : bool prop;
  applied_dns_servers : string list prop;
  dns_servers : string list prop;
  enable_accelerated_networking : bool prop;
  enable_ip_forwarding : bool prop;
  id : string prop;
  internal_dns_name_label : string prop;
  ip_configuration : ip_configuration list prop;
  ip_forwarding_enabled : bool prop;
  location : string prop;
  mac_address : string prop;
  name : string prop;
  network_security_group_id : string prop;
  private_ip_address : string prop;
  private_ip_addresses : string list prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  virtual_machine_id : string prop;
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
