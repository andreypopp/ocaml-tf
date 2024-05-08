(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type identity = {
  identity_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}

type instances = {
  computer_name : string prop;  (** computer_name *)
  instance_id : string prop;  (** instance_id *)
  latest_model_applied : bool prop;  (** latest_model_applied *)
  name : string prop;  (** name *)
  power_state : string prop;  (** power_state *)
  private_ip_address : string prop;  (** private_ip_address *)
  private_ip_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** private_ip_addresses *)
  public_ip_address : string prop;  (** public_ip_address *)
  public_ip_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** public_ip_addresses *)
  virtual_machine_id : string prop;  (** virtual_machine_id *)
  zone : string prop;  (** zone *)
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
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** ip_tag *)
  name : string prop;  (** name *)
  public_ip_prefix_id : string prop;  (** public_ip_prefix_id *)
  version : string prop;  (** version *)
}

type network_interface__ip_configuration = {
  application_gateway_backend_address_pool_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** application_gateway_backend_address_pool_ids *)
  application_security_group_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** application_security_group_ids *)
  load_balancer_backend_address_pool_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** load_balancer_backend_address_pool_ids *)
  load_balancer_inbound_nat_rules_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** load_balancer_inbound_nat_rules_ids *)
  name : string prop;  (** name *)
  primary : bool prop;  (** primary *)
  public_ip_address :
    network_interface__ip_configuration__public_ip_address list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** public_ip_address *)
  subnet_id : string prop;  (** subnet_id *)
  version : string prop;  (** version *)
}

type network_interface = {
  dns_servers : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** dns_servers *)
  enable_accelerated_networking : bool prop;
      (** enable_accelerated_networking *)
  enable_ip_forwarding : bool prop;  (** enable_ip_forwarding *)
  ip_configuration : network_interface__ip_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** ip_configuration *)
  name : string prop;  (** name *)
  network_security_group_id : string prop;
      (** network_security_group_id *)
  primary : bool prop;  (** primary *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_virtual_machine_scale_set

val azurerm_virtual_machine_scale_set :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_virtual_machine_scale_set

val yojson_of_azurerm_virtual_machine_scale_set :
  azurerm_virtual_machine_scale_set -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  identity : identity list prop;
  instances : instances list prop;
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
