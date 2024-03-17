(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_network_interface__ip_configuration = {
  gateway_load_balancer_frontend_ip_configuration_id : string option;
      [@option]
      (** gateway_load_balancer_frontend_ip_configuration_id *)
  name : string;  (** name *)
  primary : bool option; [@option]  (** primary *)
  private_ip_address : string option; [@option]
      (** private_ip_address *)
  private_ip_address_allocation : string;
      (** private_ip_address_allocation *)
  private_ip_address_version : string option; [@option]
      (** private_ip_address_version *)
  public_ip_address_id : string option; [@option]
      (** public_ip_address_id *)
  subnet_id : string option; [@option]  (** subnet_id *)
}
[@@deriving yojson_of]
(** azurerm_network_interface__ip_configuration *)

type azurerm_network_interface__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_network_interface__timeouts *)

type azurerm_network_interface = {
  auxiliary_mode : string option; [@option]  (** auxiliary_mode *)
  auxiliary_sku : string option; [@option]  (** auxiliary_sku *)
  edge_zone : string option; [@option]  (** edge_zone *)
  enable_accelerated_networking : bool option; [@option]
      (** enable_accelerated_networking *)
  enable_ip_forwarding : bool option; [@option]
      (** enable_ip_forwarding *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  ip_configuration :
    azurerm_network_interface__ip_configuration list;
  timeouts : azurerm_network_interface__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_network_interface *)

let azurerm_network_interface ?auxiliary_mode ?auxiliary_sku
    ?edge_zone ?enable_accelerated_networking ?enable_ip_forwarding
    ?tags ?timeouts ~location ~name ~resource_group_name
    ~ip_configuration __resource_id =
  let __resource_type = "azurerm_network_interface" in
  let __resource =
    {
      auxiliary_mode;
      auxiliary_sku;
      edge_zone;
      enable_accelerated_networking;
      enable_ip_forwarding;
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
