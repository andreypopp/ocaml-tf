(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_virtual_network_gateway_nat_rule__external_mapping = {
  address_space : string;  (** address_space *)
  port_range : string option; [@option]  (** port_range *)
}
[@@deriving yojson_of]
(** azurerm_virtual_network_gateway_nat_rule__external_mapping *)

type azurerm_virtual_network_gateway_nat_rule__internal_mapping = {
  address_space : string;  (** address_space *)
  port_range : string option; [@option]  (** port_range *)
}
[@@deriving yojson_of]
(** azurerm_virtual_network_gateway_nat_rule__internal_mapping *)

type azurerm_virtual_network_gateway_nat_rule__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_virtual_network_gateway_nat_rule__timeouts *)

type azurerm_virtual_network_gateway_nat_rule = {
  ip_configuration_id : string option; [@option]
      (** ip_configuration_id *)
  mode : string option; [@option]  (** mode *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  type_ : string option; [@option] [@key "type"]  (** type *)
  virtual_network_gateway_id : string;
      (** virtual_network_gateway_id *)
  external_mapping :
    azurerm_virtual_network_gateway_nat_rule__external_mapping list;
  internal_mapping :
    azurerm_virtual_network_gateway_nat_rule__internal_mapping list;
  timeouts :
    azurerm_virtual_network_gateway_nat_rule__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_network_gateway_nat_rule *)

let azurerm_virtual_network_gateway_nat_rule ?ip_configuration_id
    ?mode ?type_ ?timeouts ~name ~resource_group_name
    ~virtual_network_gateway_id ~external_mapping ~internal_mapping
    __resource_id =
  let __resource_type = "azurerm_virtual_network_gateway_nat_rule" in
  let __resource =
    {
      ip_configuration_id;
      mode;
      name;
      resource_group_name;
      type_;
      virtual_network_gateway_id;
      external_mapping;
      internal_mapping;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_virtual_network_gateway_nat_rule __resource);
  ()
