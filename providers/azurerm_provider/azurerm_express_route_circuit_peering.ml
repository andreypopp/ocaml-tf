(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_express_route_circuit_peering__ipv6__microsoft_peering = {
  advertised_communities : string prop list option; [@option]
      (** advertised_communities *)
  advertised_public_prefixes : string prop list option; [@option]
      (** advertised_public_prefixes *)
  customer_asn : float prop option; [@option]  (** customer_asn *)
  routing_registry_name : string prop option; [@option]
      (** routing_registry_name *)
}
[@@deriving yojson_of]
(** azurerm_express_route_circuit_peering__ipv6__microsoft_peering *)

type azurerm_express_route_circuit_peering__ipv6 = {
  enabled : bool prop option; [@option]  (** enabled *)
  primary_peer_address_prefix : string prop;
      (** primary_peer_address_prefix *)
  route_filter_id : string prop option; [@option]
      (** route_filter_id *)
  secondary_peer_address_prefix : string prop;
      (** secondary_peer_address_prefix *)
  microsoft_peering :
    azurerm_express_route_circuit_peering__ipv6__microsoft_peering
    list;
}
[@@deriving yojson_of]
(** azurerm_express_route_circuit_peering__ipv6 *)

type azurerm_express_route_circuit_peering__microsoft_peering_config = {
  advertised_communities : string prop list option; [@option]
      (** advertised_communities *)
  advertised_public_prefixes : string prop list;
      (** advertised_public_prefixes *)
  customer_asn : float prop option; [@option]  (** customer_asn *)
  routing_registry_name : string prop option; [@option]
      (** routing_registry_name *)
}
[@@deriving yojson_of]
(** azurerm_express_route_circuit_peering__microsoft_peering_config *)

type azurerm_express_route_circuit_peering__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_express_route_circuit_peering__timeouts *)

type azurerm_express_route_circuit_peering = {
  express_route_circuit_name : string prop;
      (** express_route_circuit_name *)
  id : string prop option; [@option]  (** id *)
  ipv4_enabled : bool prop option; [@option]  (** ipv4_enabled *)
  peer_asn : float prop option; [@option]  (** peer_asn *)
  peering_type : string prop;  (** peering_type *)
  primary_peer_address_prefix : string prop option; [@option]
      (** primary_peer_address_prefix *)
  resource_group_name : string prop;  (** resource_group_name *)
  route_filter_id : string prop option; [@option]
      (** route_filter_id *)
  secondary_peer_address_prefix : string prop option; [@option]
      (** secondary_peer_address_prefix *)
  shared_key : string prop option; [@option]  (** shared_key *)
  vlan_id : float prop;  (** vlan_id *)
  ipv6 : azurerm_express_route_circuit_peering__ipv6 list;
  microsoft_peering_config :
    azurerm_express_route_circuit_peering__microsoft_peering_config
    list;
  timeouts : azurerm_express_route_circuit_peering__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_express_route_circuit_peering *)

type t = {
  azure_asn : float prop;
  express_route_circuit_name : string prop;
  gateway_manager_etag : string prop;
  id : string prop;
  ipv4_enabled : bool prop;
  peer_asn : float prop;
  peering_type : string prop;
  primary_azure_port : string prop;
  primary_peer_address_prefix : string prop;
  resource_group_name : string prop;
  route_filter_id : string prop;
  secondary_azure_port : string prop;
  secondary_peer_address_prefix : string prop;
  shared_key : string prop;
  vlan_id : float prop;
}

let azurerm_express_route_circuit_peering ?id ?ipv4_enabled ?peer_asn
    ?primary_peer_address_prefix ?route_filter_id
    ?secondary_peer_address_prefix ?shared_key ?timeouts
    ~express_route_circuit_name ~peering_type ~resource_group_name
    ~vlan_id ~ipv6 ~microsoft_peering_config __resource_id =
  let __resource_type = "azurerm_express_route_circuit_peering" in
  let __resource =
    ({
       express_route_circuit_name;
       id;
       ipv4_enabled;
       peer_asn;
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
      : azurerm_express_route_circuit_peering)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_express_route_circuit_peering __resource);
  let __resource_attributes =
    ({
       azure_asn =
         Prop.computed __resource_type __resource_id "azure_asn";
       express_route_circuit_name =
         Prop.computed __resource_type __resource_id
           "express_route_circuit_name";
       gateway_manager_etag =
         Prop.computed __resource_type __resource_id
           "gateway_manager_etag";
       id = Prop.computed __resource_type __resource_id "id";
       ipv4_enabled =
         Prop.computed __resource_type __resource_id "ipv4_enabled";
       peer_asn =
         Prop.computed __resource_type __resource_id "peer_asn";
       peering_type =
         Prop.computed __resource_type __resource_id "peering_type";
       primary_azure_port =
         Prop.computed __resource_type __resource_id
           "primary_azure_port";
       primary_peer_address_prefix =
         Prop.computed __resource_type __resource_id
           "primary_peer_address_prefix";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       route_filter_id =
         Prop.computed __resource_type __resource_id
           "route_filter_id";
       secondary_azure_port =
         Prop.computed __resource_type __resource_id
           "secondary_azure_port";
       secondary_peer_address_prefix =
         Prop.computed __resource_type __resource_id
           "secondary_peer_address_prefix";
       shared_key =
         Prop.computed __resource_type __resource_id "shared_key";
       vlan_id =
         Prop.computed __resource_type __resource_id "vlan_id";
     }
      : t)
  in
  __resource_attributes
