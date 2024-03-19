(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type external_mapping = {
  address_space : string prop;  (** address_space *)
  port_range : string prop option; [@option]  (** port_range *)
}
[@@deriving yojson_of]
(** external_mapping *)

type internal_mapping = {
  address_space : string prop;  (** address_space *)
  port_range : string prop option; [@option]  (** port_range *)
}
[@@deriving yojson_of]
(** internal_mapping *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  external_mapping : external_mapping list;
  internal_mapping : internal_mapping list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_vpn_gateway_nat_rule *)

let external_mapping ?port_range ~address_space () : external_mapping
    =
  { address_space; port_range }

let internal_mapping ?port_range ~address_space () : internal_mapping
    =
  { address_space; port_range }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_vpn_gateway_nat_rule ?external_address_space_mappings ?id
    ?internal_address_space_mappings ?ip_configuration_id ?mode
    ?type_ ?timeouts ~name ~resource_group_name ~vpn_gateway_id
    ~external_mapping ~internal_mapping () :
    azurerm_vpn_gateway_nat_rule =
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

type t = {
  external_address_space_mappings : string list prop;
  id : string prop;
  internal_address_space_mappings : string list prop;
  ip_configuration_id : string prop;
  mode : string prop;
  name : string prop;
  resource_group_name : string prop;
  type_ : string prop;
  vpn_gateway_id : string prop;
}

let register ?tf_module ?external_address_space_mappings ?id
    ?internal_address_space_mappings ?ip_configuration_id ?mode
    ?type_ ?timeouts ~name ~resource_group_name ~vpn_gateway_id
    ~external_mapping ~internal_mapping __resource_id =
  let __resource_type = "azurerm_vpn_gateway_nat_rule" in
  let __resource =
    azurerm_vpn_gateway_nat_rule ?external_address_space_mappings ?id
      ?internal_address_space_mappings ?ip_configuration_id ?mode
      ?type_ ?timeouts ~name ~resource_group_name ~vpn_gateway_id
      ~external_mapping ~internal_mapping ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_vpn_gateway_nat_rule __resource);
  let __resource_attributes =
    ({
       external_address_space_mappings =
         Prop.computed __resource_type __resource_id
           "external_address_space_mappings";
       id = Prop.computed __resource_type __resource_id "id";
       internal_address_space_mappings =
         Prop.computed __resource_type __resource_id
           "internal_address_space_mappings";
       ip_configuration_id =
         Prop.computed __resource_type __resource_id
           "ip_configuration_id";
       mode = Prop.computed __resource_type __resource_id "mode";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       type_ = Prop.computed __resource_type __resource_id "type";
       vpn_gateway_id =
         Prop.computed __resource_type __resource_id "vpn_gateway_id";
     }
      : t)
  in
  __resource_attributes
