(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_virtual_network_gateway_nat_rule__external_mapping = {
  address_space : string prop;  (** address_space *)
  port_range : string prop option; [@option]  (** port_range *)
}
[@@deriving yojson_of]
(** azurerm_virtual_network_gateway_nat_rule__external_mapping *)

type azurerm_virtual_network_gateway_nat_rule__internal_mapping = {
  address_space : string prop;  (** address_space *)
  port_range : string prop option; [@option]  (** port_range *)
}
[@@deriving yojson_of]
(** azurerm_virtual_network_gateway_nat_rule__internal_mapping *)

type azurerm_virtual_network_gateway_nat_rule__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_virtual_network_gateway_nat_rule__timeouts *)

type azurerm_virtual_network_gateway_nat_rule = {
  id : string prop option; [@option]  (** id *)
  ip_configuration_id : string prop option; [@option]
      (** ip_configuration_id *)
  mode : string prop option; [@option]  (** mode *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  virtual_network_gateway_id : string prop;
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

type t = {
  id : string prop;
  ip_configuration_id : string prop;
  mode : string prop;
  name : string prop;
  resource_group_name : string prop;
  type_ : string prop;
  virtual_network_gateway_id : string prop;
}

let azurerm_virtual_network_gateway_nat_rule ?id ?ip_configuration_id
    ?mode ?type_ ?timeouts ~name ~resource_group_name
    ~virtual_network_gateway_id ~external_mapping ~internal_mapping
    __resource_id =
  let __resource_type = "azurerm_virtual_network_gateway_nat_rule" in
  let __resource =
    ({
       id;
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
      : azurerm_virtual_network_gateway_nat_rule)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_virtual_network_gateway_nat_rule __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       ip_configuration_id =
         Prop.computed __resource_type __resource_id
           "ip_configuration_id";
       mode = Prop.computed __resource_type __resource_id "mode";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       type_ = Prop.computed __resource_type __resource_id "type";
       virtual_network_gateway_id =
         Prop.computed __resource_type __resource_id
           "virtual_network_gateway_id";
     }
      : t)
  in
  __resource_attributes
