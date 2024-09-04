(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type linked_interconnect_attachments

val linked_interconnect_attachments :
  site_to_site_data_transfer:bool prop ->
  uris:string prop list ->
  unit ->
  linked_interconnect_attachments

type linked_router_appliance_instances__instances

val linked_router_appliance_instances__instances :
  ?ip_address:string prop ->
  ?virtual_machine:string prop ->
  unit ->
  linked_router_appliance_instances__instances

type linked_router_appliance_instances

val linked_router_appliance_instances :
  site_to_site_data_transfer:bool prop ->
  instances:linked_router_appliance_instances__instances list ->
  unit ->
  linked_router_appliance_instances

type linked_vpc_network

val linked_vpc_network :
  ?exclude_export_ranges:string prop list ->
  uri:string prop ->
  unit ->
  linked_vpc_network

type linked_vpn_tunnels

val linked_vpn_tunnels :
  site_to_site_data_transfer:bool prop ->
  uris:string prop list ->
  unit ->
  linked_vpn_tunnels

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_network_connectivity_spoke

val google_network_connectivity_spoke :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?linked_interconnect_attachments:
    linked_interconnect_attachments list ->
  ?linked_router_appliance_instances:
    linked_router_appliance_instances list ->
  ?linked_vpc_network:linked_vpc_network list ->
  ?linked_vpn_tunnels:linked_vpn_tunnels list ->
  ?timeouts:timeouts ->
  hub:string prop ->
  location:string prop ->
  name:string prop ->
  unit ->
  google_network_connectivity_spoke

val yojson_of_google_network_connectivity_spoke :
  google_network_connectivity_spoke -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_time : string prop;
  description : string prop;
  effective_labels : string Tf_core.assoc prop;
  hub : string prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  terraform_labels : string Tf_core.assoc prop;
  unique_id : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?linked_interconnect_attachments:
    linked_interconnect_attachments list ->
  ?linked_router_appliance_instances:
    linked_router_appliance_instances list ->
  ?linked_vpc_network:linked_vpc_network list ->
  ?linked_vpn_tunnels:linked_vpn_tunnels list ->
  ?timeouts:timeouts ->
  hub:string prop ->
  location:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?linked_interconnect_attachments:
    linked_interconnect_attachments list ->
  ?linked_router_appliance_instances:
    linked_router_appliance_instances list ->
  ?linked_vpc_network:linked_vpc_network list ->
  ?linked_vpn_tunnels:linked_vpn_tunnels list ->
  ?timeouts:timeouts ->
  hub:string prop ->
  location:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
