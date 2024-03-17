(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_express_route_circuit_peering__ipv6__microsoft_peering = {
  advertised_communities : string list option; [@option]
      (** advertised_communities *)
  advertised_public_prefixes : string list option; [@option]
      (** advertised_public_prefixes *)
  customer_asn : float option; [@option]  (** customer_asn *)
  routing_registry_name : string option; [@option]
      (** routing_registry_name *)
}
[@@deriving yojson_of]
(** azurerm_express_route_circuit_peering__ipv6__microsoft_peering *)

type azurerm_express_route_circuit_peering__ipv6 = {
  enabled : bool option; [@option]  (** enabled *)
  primary_peer_address_prefix : string;
      (** primary_peer_address_prefix *)
  route_filter_id : string option; [@option]  (** route_filter_id *)
  secondary_peer_address_prefix : string;
      (** secondary_peer_address_prefix *)
  microsoft_peering :
    azurerm_express_route_circuit_peering__ipv6__microsoft_peering
    list;
}
[@@deriving yojson_of]
(** azurerm_express_route_circuit_peering__ipv6 *)

type azurerm_express_route_circuit_peering__microsoft_peering_config = {
  advertised_communities : string list option; [@option]
      (** advertised_communities *)
  advertised_public_prefixes : string list;
      (** advertised_public_prefixes *)
  customer_asn : float option; [@option]  (** customer_asn *)
  routing_registry_name : string option; [@option]
      (** routing_registry_name *)
}
[@@deriving yojson_of]
(** azurerm_express_route_circuit_peering__microsoft_peering_config *)

type azurerm_express_route_circuit_peering__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_express_route_circuit_peering__timeouts *)

type azurerm_express_route_circuit_peering = {
  express_route_circuit_name : string;
      (** express_route_circuit_name *)
  ipv4_enabled : bool option; [@option]  (** ipv4_enabled *)
  peering_type : string;  (** peering_type *)
  primary_peer_address_prefix : string option; [@option]
      (** primary_peer_address_prefix *)
  resource_group_name : string;  (** resource_group_name *)
  route_filter_id : string option; [@option]  (** route_filter_id *)
  secondary_peer_address_prefix : string option; [@option]
      (** secondary_peer_address_prefix *)
  shared_key : string option; [@option]  (** shared_key *)
  vlan_id : float;  (** vlan_id *)
  ipv6 : azurerm_express_route_circuit_peering__ipv6 list;
  microsoft_peering_config :
    azurerm_express_route_circuit_peering__microsoft_peering_config
    list;
  timeouts : azurerm_express_route_circuit_peering__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_express_route_circuit_peering *)

let azurerm_express_route_circuit_peering ?ipv4_enabled
    ?primary_peer_address_prefix ?route_filter_id
    ?secondary_peer_address_prefix ?shared_key ?timeouts
    ~express_route_circuit_name ~peering_type ~resource_group_name
    ~vlan_id ~ipv6 ~microsoft_peering_config __resource_id =
  let __resource_type = "azurerm_express_route_circuit_peering" in
  let __resource =
    {
      express_route_circuit_name;
      ipv4_enabled;
      peering_type;
      primary_peer_address_prefix;
      resource_group_name;
      route_filter_id;
      secondary_peer_address_prefix;
      shared_key;
      vlan_id;
      ipv6;
      microsoft_peering_config;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_express_route_circuit_peering __resource);
  ()
