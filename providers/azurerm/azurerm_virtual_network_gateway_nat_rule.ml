(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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
  external_mapping : external_mapping list;
  internal_mapping : internal_mapping list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_network_gateway_nat_rule *)

let external_mapping ?port_range ~address_space () : external_mapping
    =
  { address_space; port_range }

let internal_mapping ?port_range ~address_space () : internal_mapping
    =
  { address_space; port_range }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_virtual_network_gateway_nat_rule ?id ?ip_configuration_id
    ?mode ?type_ ?timeouts ~name ~resource_group_name
    ~virtual_network_gateway_id ~external_mapping ~internal_mapping
    () : azurerm_virtual_network_gateway_nat_rule =
  {
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

type t = {
  id : string prop;
  ip_configuration_id : string prop;
  mode : string prop;
  name : string prop;
  resource_group_name : string prop;
  type_ : string prop;
  virtual_network_gateway_id : string prop;
}

let make ?id ?ip_configuration_id ?mode ?type_ ?timeouts ~name
    ~resource_group_name ~virtual_network_gateway_id
    ~external_mapping ~internal_mapping __id =
  let __type = "azurerm_virtual_network_gateway_nat_rule" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       ip_configuration_id =
         Prop.computed __type __id "ip_configuration_id";
       mode = Prop.computed __type __id "mode";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       type_ = Prop.computed __type __id "type";
       virtual_network_gateway_id =
         Prop.computed __type __id "virtual_network_gateway_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_virtual_network_gateway_nat_rule
        (azurerm_virtual_network_gateway_nat_rule ?id
           ?ip_configuration_id ?mode ?type_ ?timeouts ~name
           ~resource_group_name ~virtual_network_gateway_id
           ~external_mapping ~internal_mapping ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?ip_configuration_id ?mode ?type_
    ?timeouts ~name ~resource_group_name ~virtual_network_gateway_id
    ~external_mapping ~internal_mapping __id =
  let (r : _ Tf_core.resource) =
    make ?id ?ip_configuration_id ?mode ?type_ ?timeouts ~name
      ~resource_group_name ~virtual_network_gateway_id
      ~external_mapping ~internal_mapping __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
