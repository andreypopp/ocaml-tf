(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_vpn_gateway_nat_rule__external_mapping = {
  address_space : string prop;  (** address_space *)
  port_range : string prop option; [@option]  (** port_range *)
}
[@@deriving yojson_of]
(** azurerm_vpn_gateway_nat_rule__external_mapping *)

type azurerm_vpn_gateway_nat_rule__internal_mapping = {
  address_space : string prop;  (** address_space *)
  port_range : string prop option; [@option]  (** port_range *)
}
[@@deriving yojson_of]
(** azurerm_vpn_gateway_nat_rule__internal_mapping *)

type azurerm_vpn_gateway_nat_rule__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_vpn_gateway_nat_rule__timeouts *)

type azurerm_vpn_gateway_nat_rule = {
  external_address_space_mappings : string prop list option;
      [@option]
      (** external_address_space_mappings *)
  id : string prop option; [@option]  (** id *)
  internal_address_space_mappings : string prop list option;
      [@option]
      (** internal_address_space_mappings *)
  ip_configuration_id : string prop option; [@option]
      (** ip_configuration_id *)
  mode : string prop option; [@option]  (** mode *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  vpn_gateway_id : string prop;  (** vpn_gateway_id *)
  external_mapping :
    azurerm_vpn_gateway_nat_rule__external_mapping list;
  internal_mapping :
    azurerm_vpn_gateway_nat_rule__internal_mapping list;
  timeouts : azurerm_vpn_gateway_nat_rule__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_vpn_gateway_nat_rule *)

let azurerm_vpn_gateway_nat_rule ?external_address_space_mappings ?id
    ?internal_address_space_mappings ?ip_configuration_id ?mode
    ?type_ ?timeouts ~name ~resource_group_name ~vpn_gateway_id
    ~external_mapping ~internal_mapping __resource_id =
  let __resource_type = "azurerm_vpn_gateway_nat_rule" in
  let __resource =
    {
      external_address_space_mappings;
      id;
      internal_address_space_mappings;
      ip_configuration_id;
      mode;
      name;
      resource_group_name;
      type_;
      vpn_gateway_id;
      external_mapping;
      internal_mapping;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_vpn_gateway_nat_rule __resource);
  ()
