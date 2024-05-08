(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type routing__static_vnet_route = {
  address_prefixes : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** address_prefixes *)
  name : string prop;  (** name *)
  next_hop_ip_address : string prop;  (** next_hop_ip_address *)
}

type routing__propagated_route_table = {
  labels : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** labels *)
  route_table_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** route_table_ids *)
}

type routing = {
  associated_route_table_id : string prop;
      (** associated_route_table_id *)
  inbound_route_map_id : string prop;  (** inbound_route_map_id *)
  outbound_route_map_id : string prop;  (** outbound_route_map_id *)
  propagated_route_table : routing__propagated_route_table list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** propagated_route_table *)
  static_vnet_local_route_override_criteria : string prop;
      (** static_vnet_local_route_override_criteria *)
  static_vnet_route : routing__static_vnet_route list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** static_vnet_route *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_virtual_hub_connection

val azurerm_virtual_hub_connection :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  virtual_hub_name:string prop ->
  unit ->
  azurerm_virtual_hub_connection

val yojson_of_azurerm_virtual_hub_connection :
  azurerm_virtual_hub_connection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  internet_security_enabled : bool prop;
  name : string prop;
  remote_virtual_network_id : string prop;
  resource_group_name : string prop;
  routing : routing list prop;
  virtual_hub_id : string prop;
  virtual_hub_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  virtual_hub_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  virtual_hub_name:string prop ->
  string ->
  t Tf_core.resource
