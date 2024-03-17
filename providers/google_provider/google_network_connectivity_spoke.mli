(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_network_connectivity_spoke__linked_interconnect_attachments

type google_network_connectivity_spoke__linked_router_appliance_instances__instances

type google_network_connectivity_spoke__linked_router_appliance_instances

type google_network_connectivity_spoke__linked_vpc_network
type google_network_connectivity_spoke__linked_vpn_tunnels
type google_network_connectivity_spoke__timeouts
type google_network_connectivity_spoke

val google_network_connectivity_spoke :
  ?description:string ->
  ?labels:(string * string) list ->
  ?timeouts:google_network_connectivity_spoke__timeouts ->
  hub:string ->
  location:string ->
  name:string ->
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
  unit
