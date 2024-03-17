(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_network_interface__ip_configuration = {
  gateway_load_balancer_frontend_ip_configuration_id :
    string prop option;
      [@option]
      (** gateway_load_balancer_frontend_ip_configuration_id *)
  name : string prop;  (** name *)
  primary : bool prop option; [@option]  (** primary *)
  private_ip_address : string prop option; [@option]
      (** private_ip_address *)
  private_ip_address_allocation : string prop;
      (** private_ip_address_allocation *)
  private_ip_address_version : string prop option; [@option]
      (** private_ip_address_version *)
  public_ip_address_id : string prop option; [@option]
      (** public_ip_address_id *)
  subnet_id : string prop option; [@option]  (** subnet_id *)
}
[@@deriving yojson_of]
(** azurerm_network_interface__ip_configuration *)

type azurerm_network_interface__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_network_interface__timeouts *)

type azurerm_network_interface = {
  auxiliary_mode : string prop option; [@option]
      (** auxiliary_mode *)
  auxiliary_sku : string prop option; [@option]  (** auxiliary_sku *)
  dns_servers : string prop list option; [@option]
      (** dns_servers *)
  edge_zone : string prop option; [@option]  (** edge_zone *)
  enable_accelerated_networking : bool prop option; [@option]
      (** enable_accelerated_networking *)
  enable_ip_forwarding : bool prop option; [@option]
      (** enable_ip_forwarding *)
  id : string prop option; [@option]  (** id *)
  internal_dns_name_label : string prop option; [@option]
      (** internal_dns_name_label *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  ip_configuration :
    azurerm_network_interface__ip_configuration list;
  timeouts : azurerm_network_interface__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_network_interface *)

let azurerm_network_interface ?auxiliary_mode ?auxiliary_sku
    ?dns_servers ?edge_zone ?enable_accelerated_networking
    ?enable_ip_forwarding ?id ?internal_dns_name_label ?tags
    ?timeouts ~location ~name ~resource_group_name ~ip_configuration
    __resource_id =
  let __resource_type = "azurerm_network_interface" in
  let __resource =
    {
      auxiliary_mode;
      auxiliary_sku;
      dns_servers;
      edge_zone;
      enable_accelerated_networking;
      enable_ip_forwarding;
      id;
      internal_dns_name_label;
      location;
      name;
      resource_group_name;
      tags;
      ip_configuration;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_network_interface __resource);
  ()
