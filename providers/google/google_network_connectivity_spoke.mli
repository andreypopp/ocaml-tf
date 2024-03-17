(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_network_connectivity_spoke__linked_interconnect_attachments

type google_network_connectivity_spoke__linked_router_appliance_instances__instances

type google_network_connectivity_spoke__linked_router_appliance_instances

type google_network_connectivity_spoke__linked_vpc_network
type google_network_connectivity_spoke__linked_vpn_tunnels
type google_network_connectivity_spoke__timeouts
type google_network_connectivity_spoke

type t = private {
  create_time : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  hub : string prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
  unique_id : string prop;
  update_time : string prop;
}

val google_network_connectivity_spoke :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:google_network_connectivity_spoke__timeouts ->
  hub:string prop ->
  location:string prop ->
  name:string prop ->
  linked_interconnect_attachments:
    google_network_connectivity_spoke__linked_interconnect_attachments
    list ->
  linked_router_appliance_instances:
    google_network_connectivity_spoke__linked_router_appliance_instances
    list ->
  linked_vpc_network:
    google_network_connectivity_spoke__linked_vpc_network list ->
  linked_vpn_tunnels:
    google_network_connectivity_spoke__linked_vpn_tunnels list ->
  string ->
  t
